class EventsController < ApplicationController

  before_action :authenticate_user!, except: [:show]

  def index
    @events = current_user.events
  end

  def show
    @categories = @event.categories
  end

  def new

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
def create
  @event = current_user.events.build(event_params)

  if @event.save
    image_params.each do |image|
      @event.photos.create(image: image)

redirect_to_edit_path(@event) notice: "Event Successfully created"
end
end
end


  def update
    if @event.update(event_params)
      redirect_to @event, notice: "Event updated"
    else
      render :edit
    end
  end

  private
   def set_categories
     @categories = Category.all
   end

   def set_event
     @event = Event.find(params[:id])
   end

   def image_params
     params[:images].present? ? params.require(:images) : []
   end

   def event_params
     params
       .require(:event)
       .permit(
       :name, :description, :location, :price, :capacity, :includes_food, :includes_drinks,
       :starts_at, :ends_at, :active, category_ids: [])

   end
  end

end
