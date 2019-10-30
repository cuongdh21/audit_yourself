require 'rails_helper'

RSpec.describe "shippers/show", type: :view do
  before(:each) do
    @shipper = assign(:shipper, Shipper.create!(
      :client_id => "Client",
      :client_secret => "Client Secret",
      :response => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Client/)
    expect(rendered).to match(/Client Secret/)
    expect(rendered).to match(/MyText/)
  end
end
