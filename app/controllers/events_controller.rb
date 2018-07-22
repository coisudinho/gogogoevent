class EventsController < ApplicationController
	before_action :set_event, only: [:edit, :update, :destroy]

	# GET /events
	def index
		@events = current_user.events
	end

	# GET /events/new
	def new
		@event = Event.new
	end

	# GET /events/1/edit
	def edit
	end

	# POST /events
	def create
		@event = Event.new(event_params)
		@event.user_id = current_user.id

		if @event.save
			redirect_to events_url, notice: 'Event was successfully created.'
		else
			render :new
		end
	end

	# PATCH/PUT /events/1
	def update
		if @event.update(event_params)
			redirect_to events_url, notice: 'Event was successfully updated.'
		else
			render :edit
		end
	end

	# DELETE /events/1
	def destroy
		@event.destroy
		redirect_to events_url, notice: 'Event was successfully destroyed.'
	end

	private


	def set_event
		@event = Event.find(params[:id])
	end

	def event_params
		params.require(:event).permit(:image, :title, :address, :seats, :duration, :price)
	end
end
