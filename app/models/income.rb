class Income < ApplicationRecord
  validates :pay_month, uniqueness: {scope: :pay_year }
  validates :pay_year, length: { is: 4 }
  validates :pay_month, length: { maximum: 2 }  

  belongs_to :user

  def pay_day
    begin
      pay_year + '-' + pay_month
    rescue
      nil
    end
  end

  def total
    total = 0

    VALUES.each do |v|
      unless self.send(v) == nil
        total += self.send(v)
      else
        0
      end
    end
    total
  end

  NAMES = {

  '拓也給与'       =>     :salary_t,    
  'さくら給与'     =>     :salary_s,    
  '拓也賞与'       =>     :bonus_t,     
  'さくら賞与'      =>     :bonus_s,     
  'キャッシュバック'  =>     :cashback,    
  '拓也育休手当'     =>     :childcare_t, 
  'さくら育休手当'   =>     :childcare_s, 
  '育児手当'        =>     :childsupport,
  'その他'         =>     :others      

  }.freeze

  VALUES = %i(salary_t salary_s bonus_t bonus_s cashback childcare_t childcare_s childsupport others)

end
