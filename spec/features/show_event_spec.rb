
require 'rails_helper'

describe "Viewing an individual event" do
  let(:event) { create :event }

  it "shows the event_name details" do
    visit event_url(event)

    expect(page).to have_text(event.event_name)
    expect(page).to have_text(event.description)

  end
end
