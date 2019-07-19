class AttractionsController < ApplicationController
    before_action :authenticate_user!, :set_destination

    def new
        @attraction = @destination.attractions.build
    end

    def create
        @attraction = @destination.attractions.new(attraction_params)
        if @attraction.save
            redirect_to destination_path(@destination)
        else
            render :new
        end
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

    def attraction_params
        params.require(:attraction).permit(
            :name,
            :url,
            :type,
            :recommend,
            :comments
        )
    end
end