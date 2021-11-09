class Admin::ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
    @categories = Category.all
  end

  def show
  end

  def edit
  end

  def create
    @product = Product.new(params_product)
    if @product.save
      redirect_to admin_products_path
    else
      @categories = Category.all
      render  :new
    end
  end

  def update
    if @product.update(params_product)
      redirect_to admin_products_path
    else
      @categories = Category.all
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to admin_products_path
  end

  private
  def params_product
    params.require(:product).permit(:name, :category_id, :description, :price)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
