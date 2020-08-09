class AccountsController < ApplicationController

    

    def create
        account=Account.create(account_params)
        render json: account, include: [:transactions]
    end

    private
    def account_params
        params.require(:account).permit(:user_id, :name, :acct_type, :acct_number, :routing_number, :bank, :balance)
    end

end
