require 'rails_helper'

RSpec.describe "appointments/index", type: :view do
  before(:each) do
    assign(:appointments, [
      Appointment.create!(
        :who => "Who",
        :what => "What",
        :why => "Why",
        :where => "Where"
      ),
      Appointment.create!(
        :who => "Who",
        :what => "What",
        :why => "Why",
        :where => "Where"
      )
    ])
  end

  it "renders a list of appointments" do
    render
    assert_select "tr>td", :text => "Who".to_s, :count => 2
    assert_select "tr>td", :text => "What".to_s, :count => 2
    assert_select "tr>td", :text => "Why".to_s, :count => 2
    assert_select "tr>td", :text => "Where".to_s, :count => 2
  end
end
