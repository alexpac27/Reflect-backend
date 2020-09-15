class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :show]

    def profile
      render json: {user: current_user}, include: [:favorites, :articles, :logs, :moods, :journals]
    end

    def index
        users = User.all
        if users.length > 0
            render json: users, include: [:favorites, :articles, :logs, :moods, :journals]
        else
            render json: {message: "No users yet!"}, status: :accepted
        end   
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            @token = encode_token(user_id: @user.id)
            render json: {user: @user, jwt: @token}, include: [:favorites, :articles, :logs, :moods, :journals]
        else
          render json: { error: 'failed to create user' }, status: :not_acceptable
        end
      end

      def show
        user = User.find_by(id: params[:id])
        render json: {user: user}, include: [:favorites, :articles, :logs, :moods, :journals]
      end
     

      private

      def user_params
        params.require(:user).permit(:first_name, :password, :last_name, :email)
      end

end

