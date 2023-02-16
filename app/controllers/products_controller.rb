class ProductsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    if params[:query].present?
    sql_query = <<~SQL
    products.name ILIKE :query
    OR products.description ILIKE :query
  SQL
    @products = Product.where(sql_query, query: "%#{params[:query]}%")
  else
      @products = Product.all
  end
  end

  def show
    @product = Product.find(params[:id])
    @booking = Booking.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    @product.user_id = current_user.id
    if @wig.save
      redictect_to_products_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def product_params
    params.require(:product).permit(
      :name,
      :description,
      :category,
      :price,
    )
  end
end
