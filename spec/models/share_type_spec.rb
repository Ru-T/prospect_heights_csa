require 'rails_helper'

RSpec.describe ShareType, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_uniqueness_of(:name) }

  it { is_expected.to define_enum_for(:size).with(%i(full half)) }

  it { is_expected.to have_many(:shares) }
  it { is_expected.to have_many(:shareholders).through(:shares) }
end
