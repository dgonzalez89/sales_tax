class OrdersController < ApplicationController
    def new
        @order = Order.new
        @products = Product.all
      end
  
      def create
        if order_params['order_items_json'].present?
            @new_order = Order.new
            product_list = JSON.parse(order_params['order_items_json'])
            product_list.each do |item_data|
                order_item = @new_order.order_items.build(
                    product_id: item_data['product_id'],
                    quantity: item_data['quantity']
                )
                order_item.calculate_sales_tax
                order_item.calculate_subtotal
                order_item.calculate_total_price
            end

            @new_order.calculate_total
            @new_order.calculate_total_taxes

            if @new_order.save
                redirect_to order_path(@new_order), notice: 'Order was successfully created.'
            end
        else
          @products = Product.all
          render :new
        end
      end
    
      def show
        @order = Order.find(params[:id])
      end
  
      private

      def calculate_item_total(order_item)
      
      end
  
      def order_params
        params.require(:order).permit(:order_items_json)
      end
end
