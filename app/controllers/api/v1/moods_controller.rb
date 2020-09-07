class Api::V1::MoodsController < ApplicationController
    skip_before_action :authorized
    
    def index
        moods = Mood.all
        render json: moods
    end

   
end
