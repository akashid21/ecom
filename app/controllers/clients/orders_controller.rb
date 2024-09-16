class Clients::OrdersController < Clients::ClientsController

  def create
    @order = current_client.orders.new(order_params)
    @order.product_id = params[:product_id]
    if @order.save
      redirect_to clients_order_bucket_path, notice: 'Added'
    else
      redirect_to clients_products_path, alert: @order.errors.full_messages
    end
  end

  def all
    @all_orders = current_client.orders
  end

  private 

  def order_params
    params.require(:order).permit(:quantity)
  end
end