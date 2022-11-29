class FavoritesController < ApplicationController
    def index 
        favorites = Favorite.where(user_id: params[:id])
        render json: favorites

    end

    def create 
        user = User.find_by(id: session[:user_id])
        if user    
            favorite = Favorite.create(user_id: params[:user_id], recipe_id: params[:recipe_id])
            render json: favorite, status: :created  
        else
            render json: {errors: ["unauthorized"]}, status: :unauthorized   
        end 
    end
end
