require 'rails_helper'

RSpec.describe "shippers/index", type: :view do
  before(:each) do
    assign(:shippers, [
      Shipper.create!(
        :client_id => "Client",
        :client_secret => "Client Secret",
        :response => "MyText"
      ),
      Shipper.create!(
        :client_id => "Client",
        :client_secret => "Client Secret",
        :response => "MyText"
      )
    ])
  end

  it "renders a list of shippers" do
    render
    assert_select "tr>td", :text => "Client".to_s, :count => 2
    assert_select "tr>td", :text => "Client Secret".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
