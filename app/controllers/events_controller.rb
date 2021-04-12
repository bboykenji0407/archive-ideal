class EventsController < ApplicationController

  before_action :set_event,     only: [:edit, :show, :update, :destroy ]
  
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_parameter)
    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end
  
  def show
  end
  def update
    if @event.update(event_parameter)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @event.destroy
      redirect_to events_path
    end
  end
  private

  def event_parameter
    params.require(:event).permit(:name, :image, :remarks, :start_time, :time).merge(user_id: current_user.id)
  end
  def set_event
    @event = Event.find(params[:id])
  end
end
