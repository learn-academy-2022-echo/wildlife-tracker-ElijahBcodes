class AnimalsController < ApplicationController
    #Index
   def index 
        animals = Animal.all 
        render json: animals
    end 
    #Show
    def show 
        animal = Animal.find(params[:id])
        render json: animal
    end 
    #Create
    def create 
        animal = Animal.create(animal_params)
        if animal.valid?
            render json: animal 
        else 
            render json: animal.errors
        end 
    end

    

    #Destroy
    def destroy 
        animal = Animal.find(params[:id])
        if animal.destroy
            render json: animal 
        else 
            render json: aniaml.errors
        end
    end 
#Update
    def update
        animal = Animal.find(params[:id])
        animal.update(animal_params)
        if animal.valid?
           render json: animal
        else 
            render json: animal.errors
        end
    end 
   private 
    def animal_params
        params.require(:animal).permit(:name, :binomial)
    end  
    
end