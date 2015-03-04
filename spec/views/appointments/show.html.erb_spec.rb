require 'rails_helper'

RSpec.describe "appointments/show", type: :view do
  before(:each) do
    @appointment = assign(:appointment, Appointment.create!(
      :who => "Who",
      :what => "What",
      :why => "Why",
      :where => "Where"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Who/)
    expect(rendered).to match(/What/)
    expect(rendered).to match(/Why/)
    expect(rendered).to match(/Where/)
  end
end
