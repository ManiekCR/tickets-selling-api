class Api::V1::TicketsController < Api::V1::BaseController
  before_action :set_event, only: :index

  def index
    @tickets = Ticket.all.where(event_id: @event.id)
  end

  def show
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end
end
