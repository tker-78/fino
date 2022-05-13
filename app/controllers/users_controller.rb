class UsersController < ApplicationController
  def index
    @fixed_expenses = current_user.fixed_expenses.all
  end

  def show
    # fixed_expenseをchartkickに渡すためのハッシュを作成する

    # params[:id]で指定した該当する月のデータを取り出す
    pay_year = params[:id].slice(0..3)
    pay_month = params[:id].slice(4,2)
    if pay_month.slice(0,1) == "0"
      pay_month = pay_month.split('').pop.to_s
    end


    @fixed_expense = current_user.fixed_expenses.find_by(pay_month: pay_month, pay_year: pay_year)
    # @fixed_expense = current_user.fixed_expenses.first
    @hash = {}
    begin 
      FixedExpense::VALUES.each do |v|
        @hash[v] = @fixed_expense.send(v)
      end
      @hash.compact!
    rescue NoMethodError
      flash[:alert] = "データ未作成"
      redirect_to root_path
    end


  end

  def edit
  end
end

