class Bill < ApplicationRecord
  belongs_to :user

  def total
    @bills = @bills.select { |b| b.user_id == current_user.id }
    costs = @bills.map { |b| b.cost }
    costs.reduce(:+)
  end

end
