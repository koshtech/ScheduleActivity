class ProductsController < ApplicationController
  def new
  	@product = Product.new
  end

  def create
  	@product = Product.new(params[:product])
  	if @product.save
  		redirect_to root_path
  	else
  		render :new
  	end
  end

  def show
  	@products = Product.all
  end
end
