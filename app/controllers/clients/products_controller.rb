class Clients::ProductsController < Clients::ClientsController
  def index
    @products = Product.all
  end
end