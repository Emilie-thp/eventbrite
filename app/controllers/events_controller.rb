class EventsController < ApplicationController
  
  def index
  end

  def new
  end

  def show
  	@event = Event.find(params[:id])
  end

end
