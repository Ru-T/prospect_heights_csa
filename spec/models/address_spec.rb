require 'rails_helper'

RSpec.describe Address, type: :model do
  it { is_expected.to validate_presence_of(:line1) }
  it { is_expected.to validate_presence_of(:line2) }
  it { is_expected.to validate_presence_of(:city) }
  it { is_expected.to validate_presence_of(:state) }
  it { is_expected.to validate_presence_of(:zip) }
  it { is_expected.to validate_presence_of(:shareholder_id) }

  it { is_expected.to belong_to(:shareholder) }
end
