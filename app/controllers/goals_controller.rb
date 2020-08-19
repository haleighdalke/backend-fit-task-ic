class GoalsController < ApplicationController
    def index 
        goals = Goal.all
        render json: GoalSerializer.new(goals)
    end

    def new
        goal = Goal.new
    end

    def create 
        goal = Goal.new(goal_params)
        render json: GoalSerializer.new(goal)
    end

    def show
        goal = Goal.find(params[:id])
        render json: GoalSerializer.new(goal)
    end

    def edit
        goal = Goal.find(params[:id])
    end

    def update 
        goal = Goal.find(params[:id])
        goal = Goal.update(goal_params)
    end

    def destroy 
        goal = Goal.find(params[:id]).destroy
    end 

    private
    def habit_params
        params.require(:goal).permit(:frequency, :duration, duration_type)
    end
end