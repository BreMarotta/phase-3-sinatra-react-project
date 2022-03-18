class LegoSetsController < ApplicationController 

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
end

