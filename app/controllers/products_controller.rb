class ProductsController < ApplicationController
  def new
  	@product = Product.new
  end

  def create
  	@product = Product.new(params[:product])
  	if @product.save
  		redirect_to listasabores_path
  	else
  		render :new
  	end
  end

  def show
  	@products = Product.all
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      redirect_to listasabores_path
    else
      redirect_to listasabores_path
    end
  end

  def destroy
    Product.destroy(params[:id])
    redirect_to listasabores_path
  end


end
