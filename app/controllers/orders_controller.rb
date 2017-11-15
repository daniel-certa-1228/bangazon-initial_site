class OrdersController < ApplicationController

    def index
        @orders = Order.all.where
    end

    def create
        @order = Order.new(order_params)
        @order.save
    end

    private
        def order_params
            params.require(:order).permit(:customer_id, :payment_method_id)
        end
end
