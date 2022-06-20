route_path=api/internal/handler/routes.go
types_path=api/internal/types/types.go

function rm_gen_file(){
  rm -rf $1/model/*_gen.go $1/$route_path $1/$types_path $1/rpc/internal/server/*.go $1/rpc/types $1/rpc/$1/$1.go 
}

for svc in user product order pay;do rm_gen_file $svc;done

# del_gen_name="user"
# rm -rf $del_gen_name/model/*_gen.go $del_gen_name/$route_path $del_gen_name/$types_path $del_gen_name/rpc/internal/server/*.go $del_gen_name/rpc/types $del_gen_name/rpc/$del_gen_name/$del_gen_name.go 
# del_gen_name="product"
# rm -rf $del_gen_name/model/*_gen.go $del_gen_name/$route_path $del_gen_name/$types_path $del_gen_name/rpc/internal/server/*.go $del_gen_name/rpc/types $del_gen_name/rpc/$del_gen_name/$del_gen_name.go 
# del_gen_name="order"
# rm -rf $del_gen_name/model/*_gen.go $del_gen_name/$route_path $del_gen_name/$types_path $del_gen_name/rpc/internal/server/*.go $del_gen_name/rpc/types $del_gen_name/rpc/$del_gen_name/$del_gen_name.go 
# del_gen_name="pay"
# rm -rf $del_gen_name/model/*_gen.go $del_gen_name/$route_path $del_gen_name/$types_path $del_gen_name/rpc/internal/server/*.go $del_gen_name/rpc/types $del_gen_name/rpc/$del_gen_name/$del_gen_name.go 
