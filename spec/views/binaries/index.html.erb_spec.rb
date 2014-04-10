require 'spec_helper'

describe "binaries/index" do
  before(:each) do
    assign(:binaries, [
      stub_model(Binary,
        :data => ""
      ),
      stub_model(Binary,
        :data => ""
      )
    ])
  end

  it "renders a list of binaries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
