class AttractionsController < ApplicationController
    before_action :authenticate_user!, :set_destination

    def new
        @attraction = @destination.attractions.build
    end

    def create
        @attraction = @destination.attractions.build(attraction_params)
        if @attraction.save
            redirect_to destination_path(@destination)
        else
            render :new
        end
    end

    def show
        set_attraction
    end

    def edit
        set_attraction
    end

    def update
    end

    def destroy
        set_attraction
        @attraction.delete
        redirect_to destination_path(@destination)
    end

    private

    def set_destination
        @destination = current_user.destinations.find_by(id: params[:destination_id])
    end

    def set_attraction
        @attraction = @destination.attractions.find_by(id: params[:id])
    end

    def attraction_params
        params.require(:attraction).permit(
            :name,
            :url,
            :kind_of_attraction,
            :recommend,
            :comments
        )
    end
end