class DestinationsController < ApplicationController
    before_action :authenticate_user!, :set_user

    def index
        @destinations = @user.destinations
    end

    def new
        @destination = @user.destinations.build
        @destination.build_country
    end

    def create
        @destination = @user.destinations.new(destination_params)
        @destination.country = Country.find_by(params[:country_id]) if @destination.country.blank?
        if @destination.save
            redirect_to root_path
        else
            render :new
        end
    end

    def show
        set_destination
    end

    def edit
        set_destination
    end

    def update
        set_destination
        if @destination.update(destination_params)
            redirect_to destination_path(@destination)
        else
            render :edit
        end
    end

    def destroy
        set_destination
        @destination.delete
        redirect_to root_path
    end

    private

    def set_user
        @user = current_user
    end

    def set_destination
        @destination = @user.destinations.find_by(id: params[:id])
    end

    def destination_params
        params.require(:destination).permit(
            :name,
            :visited,
            :year_of_visit,
            :recommend,
            :revisit,
            :notes,
            :country_id,
            country_attributes: [
                :name
            ]
        )
    end
end