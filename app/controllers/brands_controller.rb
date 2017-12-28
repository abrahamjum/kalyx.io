class BrandsController < ApplicationController

  def index
    @brands = Brand.all
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(brand_params)

    if @brand.save
      redirect_to @brand, notice: "Company successfully added."
    else
      render 'new'
    end
  end

  def show
    @brand = Brand.find(params[:id])
  end

  def edit
  end

  def update
    if @brand.update(brand_params)
      redirect_to @brand, notice: "Update successful."
    else
    @brand = Brand.new()
      render 'edit'
    end
  end

  def destroy
    @brand.destroy
    redirect_to root_path
  end

  private

    def brand_params
      params.require(:brand).permit(:name, :about)
    end

end
