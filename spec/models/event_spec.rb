require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:event_name) }
    it { is_expected.to validate_presence_of(:description) }


describe "association with booking" do
  let(:guest_user) { create :user, email: "guest@user.com" }
  let(:host_user) { create :user, email: "host@user.com" }

  let!(:event) { create :event, user: host_user }
  let!(:booking) { create :booking, event: event, user: guest_user }

  it "has guests" do
    expect(event.guests).to include(guest_user)
  end
end
