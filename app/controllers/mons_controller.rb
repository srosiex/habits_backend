class MonsController < ApplicationController
    def index
        mons = Mon.all
        render json: mons
    end

    def show
        mon = Mon.find(params[:id])
        render_resource(mon)
    end

    def create
        mon = Mon.new(mon_params)
        mon.save
        render_resource(mons)
    end

    def update
        mon = Mon.find(params[:id])
        mon.update(mon_params)
        render_resource(mons)
    end 
    
    def destroy
        mon = Mon.find(params[:id])
        mon.destroy
        render_resource(mons)
    end

    private

    def mon_params
        params.require(:mon).permit(:plan, :complete)
    end
end
