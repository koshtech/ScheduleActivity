class ActivitiesController < ApplicationController
  respond_to :html, :xml, :json
  def new
  	@activity = Activity.new
  end

  def create
	@activity = Activity.new(params[:activity])
  	if @activity.save
  		#ok, sucessful message
  	else
  		render 'new'
  	end
  end

  def home
  end
end
