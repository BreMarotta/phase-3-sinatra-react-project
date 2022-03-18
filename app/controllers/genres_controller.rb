class GenresController < ApplicationController

    get '/genres' do 
        genres = Genre.all 
        genres.to_json
    end

    post '/genres' do
        new_genre = Genre.create(name: params[:name])
        new_genre.to_json
    end

    
end

post '/messages' do 
    message = Message.create(
      username: params[:username],
      body: params[:body]
    )
   