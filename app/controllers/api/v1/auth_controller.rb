class Api::V1::AuthController < ApplicationController
#     skip_before_action :authorized, only: [:create]
 
#   def create
#     user = User.find_by(email: user_login_params[:email])
    
#     if user && user.authenticate(user_login_params[:password]) #authenticate from BCrypt
#       token = encode_token({ user_id: user.id })  # encode_token from ApplicationController
#       render json: user: user, jwt: token, status: :accepted  #syntax might not work. Will need serializer
#     else
#       render json: { message: 'Invalid username or password' }, status: :unauthorized
#     end
#   end
 
#   private
 
#   def user_login_params
#     # params { user: {username: 'Chandler Bing', password: 'hi' } }
#     params.require(:user).permit(:email, :password)
#   end
end
