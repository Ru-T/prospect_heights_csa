class Address < ActiveRecord::Base
  belongs_to :shareholder

  validates :line1, :line2, :city, :state, :zip, :shareholder_id, presence: true
end
