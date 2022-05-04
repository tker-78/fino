class UsersController < ApplicationController
  def index
  end

  def show
    # @fixed_expense = current_user.fixed_expenses.first
    @fixed_expense = current_user.fixed_expenses.first
    @hash = {}
    
    FixedExpense::VALUES.each do |v|
      @hash[v] = @fixed_expense.send(v)
    end

    @hash.compact!

  end

  def edit
  end
end

