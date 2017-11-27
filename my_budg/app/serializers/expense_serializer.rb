class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :name, :expense_type, :cost, :start_time, :user_id
  belongs_to :user
end
