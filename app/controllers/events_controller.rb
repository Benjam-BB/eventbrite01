class EventsController < ApplicationController
  def index
    @events = Event.all
  end
  
  def new
  end

  def create
    @event = Event.new(title: params[:event_title],location: params[:event_location], start_date: params[:event_start_date], duration: params[:event_duration], price: params[:event_price], description: params[:event_description], admin_id: current_user.id ) 
  	if @event.save # essaie de sauvegarder en base @gossip
      redirect_to event_path(@event.id)
    else
      render 'events/new', to: 'events#new'
    	
    end
  end

  def show
    @event = Event.find(params[:id])
  end

end
