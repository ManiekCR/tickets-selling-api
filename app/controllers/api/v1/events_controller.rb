class Api::V1::EventsController < Api::V1::BaseController
  before_action :set_event, only: [:show, :destroy]
  before_action :event_params, only: [:update, :create]
  def index
    @events = Event.all
  end

  def show
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      render :show, status: :created
    else
      render_error
    end
  end

  def update
    if @event.update(event_params)
      render :show
    else
      render_error
    end
  end

  def destroy
    @event.destroy
    head :no_content
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :date, :time)
  end

  def render_error
    render json: { errors: @event.errors.full_messages }, status: :unprocessable_entity
  end
end
