class SightingsController < ApplicationController
       #Index
       def index 
        sighting = Sighting.all 
        render json: sighting
    end 
   
    #Show
        def show 
            sighting = Sighting.find(params[animal:id])
            render json: Sighting
        end 
        #Create
        def create 
            sighting = Sighting.create(sighting_params)
            if sighting.valid?
                render json: sighting 
            else 
                render json: sighting.errors
            end 
        end

end
