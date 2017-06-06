require 'rails_helper'

RSpec.describe Address, type: :model do
  it { is_expected.to validate_presence_of(:line1) }
  it { is_expected.to validate_presence_of(:city) }
  it { is_expected.to validate_presence_of(:state) }
  it { is_expected.to validate_presence_of(:zip) }
  it { is_expected.to validate_presence_of(:shareholder_id) }

  it { is_expected.to belong_to(:shareholder) }

  it { is_expected.to allow_value(90_210).for(:zip) }
  it { is_expected.to_not allow_value(902_109).for(:zip) }

  describe "#to_s" do
    let(:subject) { address.to_s }
    let(:shareholder) { create(:shareholder) }

    context "when all address fields are present" do
      let(:address) { create(:address, shareholder: shareholder) }
      let(:expected_result) do
        "#{address.line1}, #{address.line2}, #{address.city}, #{address.state}, #{address.zip}"
      end

      it "returns address as a string" do
        expect(subject).to eq expected_result
      end
    end

    context "when some address fields are present" do
      let(:address) { create(:address, line2: nil, shareholder: shareholder) }

      it "returns address as a string" do
        expect(subject).to eq "#{address.line1}, #{address.city}, #{address.state}, #{address.zip}"
      end
    end
  end
end
