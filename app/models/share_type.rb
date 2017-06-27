class ShareType < ActiveRecord::Base
  has_many :shares
  has_many :shareholders, through: :shares

  validates :name, :price, presence: true

  enum size: %i(full half)
end
