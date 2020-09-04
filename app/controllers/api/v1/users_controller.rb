class Api::V1::UsersController < ApplicationController
    # skip_before_action :authorized, only: [:create]

    

    def index
        users = User.all
        if users.length > 0
            # render json: users
            render json: users, include: [:favorites, :articles, :logs, :moods, :journals]
        else
            render json: {message: "No users yet!"}, status: :accepted
        end   
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            # @token = encode_token(user_id: @user.id)
            render json: @user
            # render json: {user: @user, jwt: @token}, status: :created
        else
          render json: { error: 'failed to create user' }, status: :not_acceptable
        end
      end

      def show
        user = User.find_by(id: params[:id])
        render json: user, include: [:favorites, :articles, :logs, :moods, :journals]
      end
     

      private

      def user_params
        params.require(:user).permit(:first_name, :password, :last_name, :email)
      end

end


# fetch('http://localhost:3000/api/v1/users', {
#     method: 'POST',
#     headers: {
#       'Content-Type': 'application/json',
#       Accept: 'application/json'
#     },
#     body: JSON.stringify({
#       user: {
#         email: "alex@test.com",
#         password: "pass123",
#         first_name: "Alex",
#         last_name:  "Ortiz"
#       }
#     })
#   })
#     .then(r => r.json())
#     .then(data => console.log(data))


## Sample fetch request includes Authorization:

# fetch('http://localhost:3000/api/v1/profile', {
#     method: 'GET',
#     headers: {
#       Authorization: `Bearer <token>`
#     }
#   })