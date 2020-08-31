class Api::V1::FavoritesController < ApplicationController

    def index
        favorites = Favorite.all
        if favorites.length > 0
            render json: favorites, include: :article
        else
            render json: {message: "No favorites yet!"}, status: :accepted
        end
    end

    def create
        # byebug
        fav = Favorite.create(favorite_params)
        all_favs = Favorite.all
        render json: all_favs, include: :article
    end

    def destroy 
        # byebug
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
