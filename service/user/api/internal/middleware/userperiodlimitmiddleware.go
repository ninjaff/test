package middleware

import (
	"flag"
	"fmt"
	"net/http"
	"runtime"

	"github.com/zeromicro/go-zero/core/limit"
	"github.com/zeromicro/go-zero/core/logx"
	"github.com/zeromicro/go-zero/core/stores/redis"
)

const (
	seconds = 1
	quota   = 8
)

var (
	rdx     = flag.String("redis", "localhost:6379", "the redis, default localhost:6379")
	rdxPass = flag.String("redisPass", "", "the redis password")
	//rdxPass = flag.String("redisPass", "shunc!#10010sh", "the redis password")
	rdxKey  = flag.String("redisKey", "rate", "the redis key, default rate")
	threads = flag.Int("threads", runtime.NumCPU(), "the concurrent threads, default to cores")
)

type UserPeriodLimitMiddleware struct {
}

func NewUserPeriodLimitMiddleware() *UserPeriodLimitMiddleware {
	return &UserPeriodLimitMiddleware{}
}

func (m *UserPeriodLimitMiddleware) Handle(next http.HandlerFunc) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		store := redis.New(*rdx, redis.WithPass(*rdxPass))
		fmt.Println(store.Ping())
		// New limiter
		l := limit.NewPeriodLimit(seconds, quota, store, *rdxKey)

		// take source
		code, err := l.Take("first")
		if err != nil {
			logx.Error(err)
			return
		}

		// switch val => process request
		switch code {
		case limit.OverQuota:
			logx.Errorf("OverQuota key: %v", code)
		case limit.Allowed:
			logx.Infof("AllowedQuota key: %v", code)
		case limit.HitQuota:
			logx.Errorf("HitQuota key: %v", code)
			// todo: maybe we need to let users know they hit the quota
		default:
			logx.Errorf("DefaultQuota key: %v", code)
			// unknown response, we just let the sms go
		}
		next(w, r)
	}
}
