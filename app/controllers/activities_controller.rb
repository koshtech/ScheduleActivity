class ActivitiesController < ApplicationController
  respond_to :html, :xml, :json
  def new
  	@activity = Activity.new
  end

  def home
  end
end
