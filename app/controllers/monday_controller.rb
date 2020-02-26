class MondayController < ApplicationController
    def index
        @mons = Mon.all
        render json: @mons
    end

    def show
        @mon = Mon.find(params[:id])
        render json: @mon
    end

    def create
        @mon = Mon.new(mon_params)
        @mon.save
        render json: @mon
    end

    def update
        @mon = Mon.find(params[:id])
        @mon.update(mon_params)
        render json: @mon
    end 
    
    def destroy
        @mon = Mon.find(params[:id])
        @mon.destroy
        render json: @mons
    end

    private

    def mon_params
        params.require(:plan).permit(:plan, :complete)
    end
end




