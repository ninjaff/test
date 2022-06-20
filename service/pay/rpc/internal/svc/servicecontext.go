package svc

import (
	"mall2022/service/order/rpc/order"
	"mall2022/service/pay/model"
	"mall2022/service/pay/rpc/internal/config"

	"mall2022/service/user/rpc/user"

	"github.com/zeromicro/go-zero/core/stores/sqlx"
)

type ServiceContext struct {
	Config config.Config

	PayModel model.PayModel

	UserRpc  user.User
	OrderRpc order.Order
}

func NewServiceContext(c config.Config) *ServiceContext {
	conn := sqlx.NewMysql(c.Mysql.DataSource)
	return &ServiceContext{
		Config:   c,
		PayModel: model.NewPayModel(conn, c.CacheRedis),
		//UserRpc:  user.NewUser(zrpc.MustNewClient(c.UserRpc)),
		//OrderRpc: order.NewOrder(zrpc.MustNewClient(c.OrderRpc)),
	}
}
