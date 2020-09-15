class Api::V1::FavoritesController < ApplicationController
    skip_before_action :authorized

    def index
        favorites = Favorite.all
        if favorites.length > 0
            render json: favorites, include: :article
        else
            render json: {message: "No favorites yet!"}, status: :accepted
        end
    end

    def create
        fav = Favorite.create(favorite_params)
        user = User.find_by(id: params[:favorite][:user_id])
        render json: {user: user}, include: [:favorites, :articles, :logs, :moods, :journals]
    end

    def destroy 
        favorite = Favorite.find_by(id: params[:id])
        favorite.destroy
        all_favs = Favorite.all
        render json: all_favs, include: :article
    end 

    def show
        favorite = Favorite.find_by(id: params[:id])
        render json: favorite, include: :article
    end

private

    def favorite_params
        params.require(:favorite).permit(:user_id,:article_id)
    end

end
