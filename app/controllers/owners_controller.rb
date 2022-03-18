class OwnersController < ApplicationController
    
    # Will be used to populate dropdown menu on new_lego_set form for owners. I do not want to ability to add new owners at this time (I think).
    get '/owners' do
        owners = Owner.all 
        owners.to_json
    end
end