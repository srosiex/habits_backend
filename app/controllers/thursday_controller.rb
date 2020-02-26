class ThursdayController < ApplicationController
    def index
        @thurs = Thur.all
        render json: @thurs
    end

    def show
        @thur = Thur.find(params[:id])
        render json: @thur
    end

    def create
        @thur = Thur.new(thur_params)
        @thur.save
        render json: @thur
    end

    def update
        @thur = Thur.find(params[:id])
        @thur.update(thur_params)
        render json: @thur
    end 
    
    def destroy
        @thur = Thur.find(params[:id])
        @thur.destroy
        render json: @thur
    end

    private

    def thur_params
        params.require(:plan).permit(:plan, :complete)
    end
end
