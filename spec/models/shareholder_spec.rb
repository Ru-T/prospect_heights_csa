require 'rails_helper'

RSpec.describe Shareholder, type: :model do
  it { is_expected.to validate_presence_of(:first_name) }
  it { is_expected.to validate_presence_of(:last_name) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_presence_of(:phone) }

  it { is_expected.to have_one(:address).dependent(:destroy) }
end
