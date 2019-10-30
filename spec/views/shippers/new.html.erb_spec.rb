require 'rails_helper'

RSpec.describe "shippers/new", type: :view do
  before(:each) do
    assign(:shipper, Shipper.new(
      :client_id => "MyString",
      :client_secret => "MyString",
      :response => "MyText"
    ))
  end

  it "renders new shipper form" do
    render

    assert_select "form[action=?][method=?]", shippers_path, "post" do

      assert_select "input[name=?]", "shipper[client_id]"

      assert_select "input[name=?]", "shipper[client_secret]"

      assert_select "textarea[name=?]", "shipper[response]"
    end
  end
end
