class Api::V1::EventsController < ApplicationController

    before_action :set_category
    
    #all events of a specific category
    def index
        @events = @category.events
        render json: @events  
    end 

    def show
        @event = Event.find(params[:id])
        render json: @event
    end

    def create
        @event = @category.events.new(event_params)
        if @event.save
            render json: @category
        else
            render json: {error: "Error creating event"}
        end
    end 

    def destroy
        @event = Event.find(params["id"])
        @category = Category.find(@event.category_id)
        @event.destroy
        render json: @category
    end 

    private

    def set_category
        @category = Category.find(params[:category_id])
    end

    def event_params
        params.require(:event).permit(:category_id, :image_url, :name, :summary, :when, :time, :where)
    end 

end
