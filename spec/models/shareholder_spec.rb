require 'rails_helper'

RSpec.describe Shareholder, type: :model do
  it { is_expected.to validate_presence_of(:first_name) }
  it { is_expected.to validate_presence_of(:last_name) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_presence_of(:phone) }

  it { is_expected.to have_one(:address).dependent(:destroy) }
  it { is_expected.to accept_nested_attributes_for(:address) }

  context "when creating a valid shareholder" do
    let(:shareholder) { create(:shareholder) }
    let!(:address) { create(:address, shareholder: shareholder) }

    describe "#full_address" do
      it "returns address as a string" do
        expect(shareholder.full_address).to eq(
          "#{address.line1}, #{address.line2}, #{address.city}, #{address.state}, #{address.zip}"
        )
      end
    end
  end
end
