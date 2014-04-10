require 'spec_helper'

describe "binaries/new" do
  before(:each) do
    assign(:binary, stub_model(Binary,
      :data => ""
    ).as_new_record)
  end

  it "renders new binary form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", binaries_path, "post" do
      assert_select "input#binary_data[name=?]", "binary[data]"
    end
  end
end
