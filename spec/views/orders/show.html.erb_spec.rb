require 'rails_helper'

RSpec.describe "orders/show", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :tracking_id1 => "Tracking Id1",
      :tracking_id2 => "Tracking Id2",
      :tracking_id3 => "Tracking Id3",
      :passed => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Tracking Id1/)
    expect(rendered).to match(/Tracking Id2/)
    expect(rendered).to match(/Tracking Id3/)
    expect(rendered).to match(/false/)
  end
end
