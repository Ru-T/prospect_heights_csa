class Address < ActiveRecord::Base
  belongs_to :shareholder

  validates :line1, :city, :state, :zip, :shareholder_id, presence: true
  validates :zip, presence: true, length: { is: 5 }

  def to_s
    [line1, line2, city, state, zip].reject(&:blank?).join(", ")
  end
end
