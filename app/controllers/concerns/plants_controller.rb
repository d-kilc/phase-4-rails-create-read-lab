class PlantsController < ApplicationController
    def index
        render json: Plant.all
    end

    def create
        plant = Plant.create(name: params[:name], image: params[:image], price: params[:price])
        render json: plant, status: 201
    end
    
    def show
        id = params[:id]
        plant = Plant.find id
        render json: plant
    end

end
