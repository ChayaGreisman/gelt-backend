class TransactionsController < ApplicationController

    def create
        transaction = Transaction.create(transaction_params)
        render json: transaction
    end

    private

    def transaction_params
        params.require(:transaction).permit(:date, :description, :amount, :account_id, :category_id)
    end

end
