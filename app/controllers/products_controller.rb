class ProductsController < ApplicationController

  def home
  end

  def index
    @products = Product.all.order("created_at DESC")
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product, notice: "Product successfully added."
    else
      render 'new'
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to @product, notice: "Update successful."
    else
      render 'edit'
    end
  end

  def destroy
    @product.destroy
    redirect_to root_path
  end

  private

    def product_params
      params.require(:product).permit(:name, :SKU, :price, :description, :quantity, :brand)
    end

end
