class HabitsController < ApplicationController
    def index
        habits = Habit.all
        render json: habits
    end

    def show
        habit = Habit.find(params[:id])
        render_resource(habit, with: [:notes])
    end

    def create
        habit = Habit.new(habit_params)
        habit.save
        render_resource(habit)
    end

    def update
        habit = Habit.find(params[:id])
        habit.update(habit_params)
        render_resource(habit)
    end 
    
    def destroy
        habit = Habit.find(params[:id])
        habit.destroy
        render_resource(habit)
    end

    private

    def habit_params
        params.require(:habit).permit(:name, :goal, :complete)
    end
end
