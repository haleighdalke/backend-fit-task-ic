class HabitsController < ApplicationController
    def index 
        habits = Habit.all
        render json: habits
    end

    def new
        habit = Habit.new
    end

    def create 
        habit = Habit.create(habit_params)
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
        habit.update(habit_params)
        render json: HabitSerializer.new(habit)
    end

    private
    def habit_params
        params.require(:habit).permit(:activity, :activity_type)
    end
end