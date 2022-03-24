class GenresController < ApplicationController

    get '/genres' do 
        genres = Genre.sort_order 
        genres.to_json(include: :lego_sets)
    end

    # On dropdown menu for new_lego_set form will populate genres via GET to '/genres'. Will have an "other" option that will need to allow for a new genre to be added.
    post '/genres/new' do
        new_genre = Genre.create(name: params[:name])
        new_genre.to_json
    end

    
end
