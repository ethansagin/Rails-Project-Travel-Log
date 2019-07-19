class AttractionsController < ApplicationController
    before_action :authenticate_user!

    def new
        set_destination
        @attraction = @destination.attractions.build
    end

    def create
    end

    def show
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def set_destination
        @destination = current_user.destinations.find_by(id: params[:destination_id])
    end
end