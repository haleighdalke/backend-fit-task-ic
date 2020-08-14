class HabitsController < ApplicationController
    def index 
        habits = Habit.all
        render json: HabitSerializer.new(habits)
    end

    def new
        habit = Habit.new
    end

    def create 
        habit = Habit.new(habit_params)
        render json: HabitSerializer.new(habit)
    end

    def show
        habit = Habit.find(params[:id])
        render json: HabitSerializer.new(habit)
    end

    def edit
        habit = Habit.find(params[:id])
    end

    def update 
        habit = Habit.find(params[:id])
        habit = Habit.update(habit_params)
    end

    private
    def habit_params
        params.require(:habit).permit(:activity, :type)
    end
end