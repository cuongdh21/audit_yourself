require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
      :tracking_id1 => "MyString",
      :tracking_id2 => "MyString",
      :tracking_id3 => "MyString",
      :passed => false
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input[name=?]", "order[tracking_id1]"

      assert_select "input[name=?]", "order[tracking_id2]"

      assert_select "input[name=?]", "order[tracking_id3]"

      assert_select "input[name=?]", "order[passed]"
    end
  end
end
