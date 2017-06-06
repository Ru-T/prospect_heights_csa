class Share < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  enum size: %i(full half)
end
