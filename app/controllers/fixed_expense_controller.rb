class FixedExpenseController < ApplicationController

  def index
    @fixed_expenses = FixedExpense.all
    @fixed_expense = FixedExpense.find_by(pay_month: 'Sat, 01 Jan 2022')
  end

  def new
    @fixed_expense = FixedExpense.new

    # if @fixed_expense = FixedExpense.find_by(pay_month: params[:fixed_expense])
    #   @fixed_expense
    # else
    #   @fixed_expense = FixedExpense.create
    # end
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

  def edit
    @fixed_expense = FixedExpense.find_by(id: params[:id])
  end

  def update
    @fixed_expense = FixedExpense.find_by(id: params[:id])

    @fixed_expense.reload
    if @fixed_expense.update(fixed_expense_params)
      flash[:success] = "Successfully updated."
      redirect_to fixed_expense_index_url
    else
      flash.now[:danger] = "Something wrong. Please retry."
      render 'edit'
    end
  end


  private

  CATEGORIES = %i(house car insurance tax personal communication infra pay_month)

  def fixed_expense_params
    params.require(:fixed_expense).permit(CATEGORIES)
  end
end
