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


    # 支出のグラフ表示
    @fixed_expense = current_user.fixed_expenses.find_by(pay_month: pay_month, pay_year: pay_year)
    @variable_expense = current_user.variable_expenses.find_by(pay_month: pay_month, pay_year: pay_year)
    @income = current_user.incomes.find_by(pay_month: pay_month, pay_year: pay_year)

    @hash = {}
    @hash_income = {}

    begin 
      FixedExpense::VALUES.each do |v|
        @hash[v] = @fixed_expense.send(v)
      end
      VariableExpense::VALUES.each do |v|
        @hash[v] = @variable_expense.send(v)
      end      
      @hash.compact!

      Income::VALUES.each do |v|
        label = Income::NAMES[v]
        @hash_income[label] = @income.send(v)
      end
      @hash_income.compact!


    # rescue NoMethodError
    #   flash[:alert] = "データ未作成"
    #   redirect_to fixed_expense_index_path
    end

  end

  def edit
  end
end

