require 'spec_helper'

describe "binaries/edit" do
  before(:each) do
    @binary = assign(:binary, stub_model(Binary,
      :data => ""
    ))
  end

  it "renders the edit binary form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", binary_path(@binary), "post" do
      assert_select "input#binary_data[name=?]", "binary[data]"
    end
  end
end
