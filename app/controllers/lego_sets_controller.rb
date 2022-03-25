class LegoSetsController < ApplicationController 

    get '/lego_sets/:id' do
        lego_sets = LegoSet.sort_order(params[:id])
        lego_sets.to_json(include: :owner)  
    end
 
    post '/lego_sets' do
        owner = Owner.find_by(id: params[:owner_id])
        new_set = owner.lego_sets.create(
            set_number: params[:set_number],
            pieces: params[:pieces],
            name: params[:name],
            img: params[:img],
            genre_id: params[:genre_id]
        )
        new_set.to_json(include: :owner)
    end

    patch '/lego_sets/:id' do 
        lego_set = LegoSet.find_by(id: params[:id])
        lego_set.update(
            owner_id: params[:owner_id]
        )
        lego_set.to_json(include: :owner)
    end
    
end
