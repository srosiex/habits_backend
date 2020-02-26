class TuesdayController < ApplicationController
    def index
        @tues = Tue.all
        render json: @tues
    end

    def show
        @tue = Tue.find(params[:id])
        render json: @tue
    end

    def create
        @tue = Tue.new(tue_params)
        @tue.save
        render json: @tue
    end

    def update
        @tue = Tue.find(params[:id])
        @tue.update(tue_params)
        render json: @tue
    end 
    
    def destroy
        @tue = Tue.find(params[:id])
        @tue.destroy
        render json: @tue
    end

    private

    def tue_params
        params.require(:plan).permit(:plan, :complete)
    end
end
