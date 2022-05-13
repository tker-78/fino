class IncomeController < ApplicationController
  def index
    # new, editへのリンク生成用のハッシュ作成
    @incomes = current_user.incomes.all
    @list = {}

    @incomes.each do |income|
      @list[income.id] = income.pay_day
    end
  end

  def new
    @income = current_user.incomes.new
  end

  def create
    @income = current_user.income.new(income_params)

    if @income.save
      flash[:notice] "Successfully add data"
      redirect_to root_path
    else
      flash[:notice] = "Something wrong"
      render 'new'
    end
  end

  def edit
    @income = current_user.incomes.find_by(id: params[:id])
  end

  def update
    @income = current_user.incomes.find_by(id: params[:id])
    if @income.update(income_params)
      flash[:notice] = "Successfully updated."
      redirect_to income_index_path
    else
      flash[:alert] = "Something wrong. Please retry."
      render 'edit'
    end
  end

  private
  CATEGORIES = %i(salary_t salary_s bonus_t bonus_s cashback childcate_t childcare_s childsupport others pay_year pay_month)
  def income_params
    params.require(:income).permit(CATEGORIES)
  end
end
