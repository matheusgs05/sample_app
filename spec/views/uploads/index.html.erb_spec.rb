require 'spec_helper'

describe "uploads/index" do
  before(:each) do
    assign(:uploads, [
      stub_model(Upload,
        :arquivo => "Arquivo",
        :id_uploader => 1,
        :file_name => "File Name",
        :content_type => "Content Type",
        :binary_id => 2,
        :size => 3
      ),
      stub_model(Upload,
        :arquivo => "Arquivo",
        :id_uploader => 1,
        :file_name => "File Name",
        :content_type => "Content Type",
        :binary_id => 2,
        :size => 3
      )
    ])
  end

  it "renders a list of uploads" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Arquivo".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "File Name".to_s, :count => 2
    assert_select "tr>td", :text => "Content Type".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
