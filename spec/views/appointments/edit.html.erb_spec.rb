require 'rails_helper'

RSpec.describe "appointments/edit", type: :view do
  before(:each) do
    @appointment = assign(:appointment, Appointment.create!(
      :who => "MyString",
      :what => "MyString",
      :why => "MyString",
      :where => "MyString"
    ))
  end

  it "renders the edit appointment form" do
    render

    assert_select "form[action=?][method=?]", appointment_path(@appointment), "post" do

      assert_select "input#appointment_who[name=?]", "appointment[who]"

      assert_select "input#appointment_what[name=?]", "appointment[what]"

      assert_select "input#appointment_why[name=?]", "appointment[why]"

      assert_select "input#appointment_where[name=?]", "appointment[where]"
    end
  end
end
