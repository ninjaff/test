# go install ./cmd/swagger
# swagger serve -F=swagger user/user.json --port 9080 --host 0.0.0.0 --no-open
swagger serve -F=swagger product/product.json --port 9080 --host 0.0.0.0 --no-open
# swagger serve -F=swagger order/order.json --port 9080 --host 0.0.0.0 --no-open
# swagger serve -F=swagger pay/pay.json --port 9080 --host 0.0.0.0 --no-open