class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password, :password_confirmation, :password_digest, :income, :zipcode
  has_many :bills
  has_many :expenses
end
