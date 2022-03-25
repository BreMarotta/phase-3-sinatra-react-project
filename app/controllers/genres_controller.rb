class GenresController < ApplicationController

    get '/genres' do 
        genres = Genre.sort_order 
        genres.to_json(include: :lego_sets)
    end

    post '/genres/new' do
        new_genre = Genre.create(name: params[:name])
        new_genre.to_json
    end

    
end
