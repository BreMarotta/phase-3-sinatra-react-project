class LegoSetsController < ApplicationController 

    # Sets are sorted in ascending order by the set_number. Cannot get this to include both owner and genre. The code below works for each individually but not together. It will only put the second one if they are both listed.
    get '/lego_sets' do
        lego_sets = LegoSet.sort_order
        lego_sets.to_json
        # ({
        #     include: { 
        #         owner: { only: [:name]}},  
        #     include: {
        #         genre: { only: [:name]}}
        # })
    end

    # Will need to create a controlled form to add new lego_set. On form, owner and genre need to be dropdown populated by GET requests to /owners and /genres. For Genres, will need an "other" option that will send a POST to /genres to create a new genre?
    post '/lego_sets' do
        new_set = LegoSet.create(
            set_number: params[:set_number],
            pieces: params[:pieces],
            name: params[:name],
            img: params[:img],
            owner_id: params[:owner_id],
            genre_id: params[:genre_id]
        )
        new_set.to_json
    end

    # Patch will be used to update owner of a set. Primarily when a set on the WishList is gifted to a new owner. Button on set card will need a dropdown to select new owner. That will send a PATCH to lego_sets/:id (id being the lego_set_id) with the new owner_id.
    patch '/lego_sets/:id' do 
        lego_set = LegoSet.find_by(id: params[:id])
        lego_set.update(
            owner_id: params[:owner_id]
        )
        lego_set.to_json
    end
    
end

