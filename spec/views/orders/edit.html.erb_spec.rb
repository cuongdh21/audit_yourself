require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :tracking_id1 => "MyString",
      :tracking_id2 => "MyString",
      :tracking_id3 => "MyString",
      :passed => false
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input[name=?]", "order[tracking_id1]"

      assert_select "input[name=?]", "order[tracking_id2]"

      assert_select "input[name=?]", "order[tracking_id3]"

      assert_select "input[name=?]", "order[passed]"
    end
  end
end
