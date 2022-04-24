class FixedExpenseController < ApplicationController

  def index
    @fixed_expenses = FixedExpense.all
  end

  def new
    @fixed_expense = FixedExpense.new
  end

  def create
    @fixed_expense = FixedExpense.new(fixed_expense_params)
    if @fixed_expense.save
      flash[:info] = "Successfully add data"
      redirect_to root_path
    else
      flash[:danger] = "Something wrong"
      redirect_to root_path
    end
  end


  private

  CATEGORIES = %i(house car insurance tax personal communication infra)

  def fixed_expense_params
    params.require(:fixed_expense).permit(CATEGORIES)
  end
end
