class FixedExpenseController < ApplicationController

  def index
    @fixed_expenses = current_user.fixed_expenses.all
    @list = {}
    @fixed_expenses.each do |expense|
      @list[expense.id] = expense.pay_day
    end
  end

  def new
    @fixed_expense = current_user.fixed_expenses.new


  end

  def create
    @fixed_expense = current_user.fixed_expenses.new(fixed_expense_params)
    if @fixed_expense.save
      flash[:notice] = "Successfully add data"
      redirect_to root_path 
    else
      flash[:alert] = "Something wrong"
      redirect_to root_path
    end
  end

  def edit
    @fixed_expense = current_user.fixed_expenses.find_by(id: params[:id])
  end

  def update
    @fixed_expense = current_user.fixed_expenses.find_by(id: params[:id])

    if @fixed_expense.update(fixed_expense_params)
      flash[:notice] = "Successfully updated."
      redirect_to fixed_expense_index_url
    else
      flash.now[:alert] = "Something wrong. Please retry."
      render 'edit'
    end
  end


  private

  CATEGORIES = %i(house car insurance tax personal communication infra pay_year pay_month)

  def fixed_expense_params
    params.require(:fixed_expense).permit(CATEGORIES)
  end
end
