class AccomplishmentsController < ApplicationController
    def index 
        accomplishments = Accomplishment.all
        render json: AccomplishmentSerializer.new(accomplishments)
    end

    def new
        accomplishment = Accomplishment.new
    end

    def create 
        accomplishment = Accomplishment.new(accomplishment_params)
        render json: AccomplishmentSerializer.new(accomplishment)
    end

    def show
        accomplishment = Accomplishment.find(params[:id])
        render json: AccomplishmentSerializer.new(accomplishment)
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