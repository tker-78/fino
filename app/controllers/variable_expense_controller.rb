class VariableExpenseController < ApplicationController
  def index
    @variable_expense = current_user.variable_expenses.all
    @list = {}
    @variable_expense.each do |expense|
      @list[expense.id] = expense.pay_day
    end
  end

  def new
    @variable_expense = current_user.variable_expenses.new
  end

  def create
    @variable_expense = current_user.variable_expenses.new(variable_expense_params)
    if @variable_expense.save
      flash[:notice] = "Successfully add date"
      redirect_to root_path
    else
      flash.now[:alert] = "Something wrong"
      render 'new' 
    end

  end

  def edit
    @variable_expense = current_user.variable_expenses.find_by(id: params[:id])
  end

  def update
    @variable_expense = current_user.variable_expenses.find_by(id: params[:id])
    if @variable_expense.save
      flash[:notice] = "Successfully updated."
      redirect_to variable_expense_index_url
    else
      flash.new[:alert] = "Something wrong. Please retry."
      render 'edit'
    end
  end

  private

  CATEGORIES = %i(food car trans child comodity furniture present cash pay_year pay_month)

  def variable_expense_params
    params.require(:variable_expense).permit(CATEGORIES)
  end

end
