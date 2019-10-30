require 'rails_helper'

RSpec.describe "shippers/edit", type: :view do
  before(:each) do
    @shipper = assign(:shipper, Shipper.create!(
      :client_id => "MyString",
      :client_secret => "MyString",
      :response => "MyText"
    ))
  end

  it "renders the edit shipper form" do
    render

    assert_select "form[action=?][method=?]", shipper_path(@shipper), "post" do

      assert_select "input[name=?]", "shipper[client_id]"

      assert_select "input[name=?]", "shipper[client_secret]"

      assert_select "textarea[name=?]", "shipper[response]"
    end
  end
end
