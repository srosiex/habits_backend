class SatsController < ApplicationController
    def index
        @sats = Sat.all
        render json: @sats
    end

    def show
        @sat = Sat.find(params[:id])
        render json: @sat
    end

    def create
        @sat = Sat.new(sat_params)
        @sat.save
        render json: @sat
    end

    def update
        @sat = Sat.find(params[:id])
        @sat.update(sat_params)
        render json: @sat
    end 
    
    def destroy
        @sat = Sat.find(params[:id])
        @sat.destroy
        render json: @sat
    end

    private

    def sat_params
        params.require(:sat).permit(:plan, :complete)
    end
end
