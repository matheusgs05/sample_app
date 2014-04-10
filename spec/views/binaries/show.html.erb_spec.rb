require 'spec_helper'

describe "binaries/show" do
  before(:each) do
    @binary = assign(:binary, stub_model(Binary,
      :data => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
