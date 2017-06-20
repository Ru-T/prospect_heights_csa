require 'rails_helper'

RSpec.describe Share, type: :model do
  it { is_expected.to validate_presence_of(:share_type_id) }
  it { is_expected.to validate_presence_of(:shareholder_id) }

  it { is_expected.to belong_to(:share_type) }
  it { is_expected.to belong_to(:shareholder) }
end
