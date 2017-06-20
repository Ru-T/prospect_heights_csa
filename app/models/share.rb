class Share < ActiveRecord::Base
  belongs_to :share_type
  belongs_to :shareholder

  validates :shareholder_id, :share_type_id, presence: true
end
