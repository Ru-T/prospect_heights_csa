class Shareholder < ActiveRecord::Base
  has_one :address, dependent: :destroy

  validates :first_name, :last_name, :email, :phone, presence: true
end
