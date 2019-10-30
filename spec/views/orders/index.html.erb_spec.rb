require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        :tracking_id1 => "Tracking Id1",
        :tracking_id2 => "Tracking Id2",
        :tracking_id3 => "Tracking Id3",
        :passed => false
      ),
      Order.create!(
        :tracking_id1 => "Tracking Id1",
        :tracking_id2 => "Tracking Id2",
        :tracking_id3 => "Tracking Id3",
        :passed => false
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => "Tracking Id1".to_s, :count => 2
    assert_select "tr>td", :text => "Tracking Id2".to_s, :count => 2
    assert_select "tr>td", :text => "Tracking Id3".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
