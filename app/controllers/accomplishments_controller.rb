class AccomplishmentsController < ApplicationController
    def index 
        accomplishments = Accomplishment.all
        render json: accomplishments
    end

    def new
        accomplishment = Accomplishment.new
    end

    def create 
        accomplishment = Accomplishment.create(accomplishment_params)
        render json: accomplishment
    end

    def show
        accomplishment = Accomplishment.find(params[:id])
        render json: accomplishment
    end

    def edit
        accomplishment = Accomplishment.find(params[:id])
    end

    def update 
        accomplishment = Accomplishment.find(params[:id])
        accomplishment = Accomplishment.update(accomplishment_params)
    end

    private
    def accomplishment_params
        params.require(:accomplishment).permit(:date, :duration, duration_type)
    end
end