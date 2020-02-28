class PlansController < ApplicationController


        def index
            @plans = Plan.where(day: params[:day])
            render json: @plans
        end
    
        def show
            @plan = Plan.find(params[:id])
            render json: @plan
        end
    
        def create
            # {plan: {plan: 'soemthing', day: "Monday"}}
            @plan = Plan.new(plan_params)
            @plan.save
            render json: @wed
        end
    
        def update
            @plan = Plan.find(params[:id])
            @plan.update(plan_params)
            render json: @plan
        end 
        
        def destroy
            @plan = Plan.find(params[:id])
            @plan.destroy
            render json: @plan
        end
    
        private
    
        def plan_params
            params.require(:plan).permit(:plan)
        end
    end
    

