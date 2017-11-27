class BillSerializer < ActiveModel::Serializer
  attributes :id, :company, :bill_type, :cost, :start_time, :user_id
  belongs_to :user 
end
