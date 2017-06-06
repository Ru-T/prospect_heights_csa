require 'rails_helper'

RSpec.describe Share, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_uniqueness_of(:name) }

  it { is_expected.to define_enum_for(:size).with(%i(full half)) }
end
