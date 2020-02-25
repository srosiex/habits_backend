class WednesdayController < ApplicationController
    def index
        @weds = Wed.all
        render json: @weds
    end

    def show
        @wed = Wed.find(params[:id])
        render json: @wed
    end

    def create
        @wed = Wed.new(wed_params)
        @wed.save
        render json: @wed
    end

    def update
        @wed = Wed.find(params[:id])
        @wed.update(wed_params)
        render json: @wed
    end 
    
    def destroy
        @wed = Wed.find(params[:id])
        @wed.destroy
        render json: @wed
    end

    private

    def wed_params
        params.require(:wed).permit(:plan, :complete)
    end
end
