class ActivitiesController < ApplicationController
  respond_to :html, :xml, :json
  def new
  	@activity = Activity.new
  end

  def create
	@activity = Activity.new(params[:activity])
  	if @activity.save
  		redirect_to  root_path
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
