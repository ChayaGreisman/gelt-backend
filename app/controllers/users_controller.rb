class UsersController < ApplicationController

    def index
        users = User.all
        # render :json => users.to_json(:include => {:accounts => {:include=> :transactions}})
        render json: users, include:[:accounts]
    end
    
    
    def create
        user=User.create(user_params)
        render json: user
    end


    private

    def user_params
        params.require(:user).permit(:name,:password, :email, :dob)
    end
end
