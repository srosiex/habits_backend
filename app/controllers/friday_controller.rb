class FridayController < ApplicationController
    def index
        @fris = Fri.all
        render json: @fris
    end

    def show
        @fri = Fri.find(params[:id])
        render json: @fri
    end

    def create
        @fri = Fri.new(fri_params)
        @fri.save
        render json: @fri
    end

    def update
        @fri = Fri.find(params[:id])
        @fri.update(fri_params)
        render json: @fri
    end 
    
    def destroy
        @fri = Fri.find(params[:id])
        @fri.destroy
        render json: @fri
    end

    private

    def fri_params
        params.require(:fri).permit(:plan, :complete)
    end
end
