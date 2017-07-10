require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe "association with booking" do
   let(:guest_user) { create :user, email: "guest@user.com" }
   let(:host_user) { create :user, email: "host@user.com" }

   let!(:event) { create :event, user: host_user }
   let!(:booking) { create :booking, event: event, user: guest_user }

   it "has bookings" do
    expect(guest_user.booked_events).to include(event)
  end
end
end
