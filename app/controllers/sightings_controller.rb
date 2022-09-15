class SightingsController < ApplicationController
       #Index
       def index 
        sighting = Sighting.where(date: params[:start_date]..params[:end_date])
        render json: sighting
    end 
   
    #Show
        def show 
            sighting = Sighting.find(id: params[:id])
            if sighting
            render json: sighting, include:[animals]
            else 
                render json: sighting.errors
            end
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

        #Update
    def update
        sighting = Sighting.find(params[:id])
        sighting.update(sighting_params)
        if sighting.valid?
           render json: sighting
        else 
            render json: sighting.errors
        end
    end 
        
    def destroy
        sighting = Sighting.find(params[:id])
        sighting.update(sighting_params)
        if sighting.valid?
            render json: sighting
        else 
            render json sighting.errors
        end
    end

        private
        def sighting_params
            params.require(:sighting).permit(:animal_id, :latitude, :longitude, :date,)
        end

end
