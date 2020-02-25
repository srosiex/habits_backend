class HabitsController < ApplicationController
    def index
        @habits = Habit.all
        render json: @habits
    end

    def show
        @habit = Habit.find(params[:id])
        render json: @habit
    end

    def create
        @habit = Habit.new(habit_params)
        @habit.save
        render json: @habit
    end

    def update
        @habit = Habit.find(params[:id])
        @habit.update(habit_params)
        render json: @habit
    end 
    
    def destroy
        @habit = Habit.find(params[:id])
        @habit.destroy
        render json: @habit
    end

    private

    def habit_params
        params.require(:habit).permit(:name, :goal, :days_complete)
    end
end
