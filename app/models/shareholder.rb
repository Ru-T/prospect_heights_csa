class Shareholder < ActiveRecord::Base
  has_one :address, dependent: :destroy
  has_many :shares
  has_many :share_types, through: :shares

  validates :first_name, :last_name, :email, :phone, presence: true
  accepts_nested_attributes_for :address

  def full_address
    address.to_s
  end
end
