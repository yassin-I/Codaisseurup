class EventsController < ApplicationController

  before_action :authenticate_user!, except: [:show]

  def index
    @events = current_user.events
  end

  def show; end

  def new_event
    @event = current_user.events.build
  end

  def form
    @event = current_user.events.build(event_params)

    if @event.save
      redirect_to @event, notice: "Event form"
    else
      render :new
    end
  end

  def edit_event; end

  def update
    if @event.update(event_params)
      redirect_to @event, notice: "Event updated"
    else
      render :edit
    end
  end

end
