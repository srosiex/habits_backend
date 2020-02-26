class SunsController < ApplicationController
    def index
        @suns = Sun.all
        render json: @suns
    end

    def show
        @sun = Sun.find(params[:id])
        render json: @sun
    end

    def create
        @sun = Sun.new(sun_params)
        @sun.save
        render json: @sun
    end

    def update
        @sun = Sun.find(params[:id])
        @sun.update(sun_params)
        render json: @sun
    end 
    
    def destroy
        @sun = Sun.find(params[:id])
        @sun.destroy
        render json: @sun
    end

    private

    def sun_params
        params.require(:plan).permit(:plan, :complete)
    end
end
