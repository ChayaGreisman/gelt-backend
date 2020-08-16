class UsersController < ApplicationController

    def index
        users = User.all
        render :json => users.to_json(:include => {:accounts => {:include=> :transactions}, :categories => {:include=> :transactions}, :cards => {:except=> :created_at}})
    end
    
    def create
        user=User.create(user_params)

        Category.create(user_id: user.id, name: "Housing & Transportation", budgeted_amount: 3000.00)
        Category.create(user_id: user.id, name: "Healthcare & Insurance", budgeted_amount: 800.00)
        Category.create(user_id: user.id, name: "Food", budgeted_amount: 600.00)
        Category.create(user_id: user.id, name: "Personal", budgeted_amount: 200.00)
        Category.create(user_id: user.id, name: "Clothing", budgeted_amount: 300.00)
        Category.create(user_id: user.id, name: "Entertainment", budgeted_amount: 100.00)
        Category.create(user_id: user.id, name: "Charity & Gifts", budgeted_amount: 250.00)
        Category.create(user_id: user.id, name: "Misc.", budgeted_amount: 100.00)

        render :json => user.to_json(:include => {:accounts => {:include=> :transactions}, :categories => {:include=> :transactions}, :cards => {:except=> :created_at}})
    end

    private
    def user_params
        params.require(:user).permit(:name,:password, :email, :dob)
    end


end
