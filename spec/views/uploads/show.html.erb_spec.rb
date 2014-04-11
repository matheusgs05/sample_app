require 'spec_helper'

describe "uploads/show" do
  before(:each) do
    @upload = assign(:upload, stub_model(Upload,
      :arquivo => "Arquivo",
      :id_uploader => 1,
      :file_name => "File Name",
      :content_type => "Content Type",
      :binary_id => 2,
      :size => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Arquivo/)
    rendered.should match(/1/)
    rendered.should match(/File Name/)
    rendered.should match(/Content Type/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
