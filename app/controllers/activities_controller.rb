class ActivitiesController < ApplicationController
  respond_to :html, :xml, :json
  before_filter :authenticate_user!, :except => [:new, :create, :home]

  def new
  	@activity = Activity.new
    @products = Product.all
  end

  def create
	@activity = Activity.new(params[:activity])
  @products = Product.all
  if @activity.save
		redirect_to(root_path, :notice => "Reserva criada com sucesso")
	else
		render :new
	end
  end

  def show
      @activities = Activity.all
  end

  def home
  end
end
