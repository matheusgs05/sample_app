require 'spec_helper'

describe "uploads/new" do
  before(:each) do
    assign(:upload, stub_model(Upload,
      :arquivo => "MyString",
      :id_uploader => 1,
      :file_name => "MyString",
      :content_type => "MyString",
      :binary_id => 1,
      :size => 1
    ).as_new_record)
  end

  it "renders new upload form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", uploads_path, "post" do
      assert_select "input#upload_arquivo[name=?]", "upload[arquivo]"
      assert_select "input#upload_id_uploader[name=?]", "upload[id_uploader]"
      assert_select "input#upload_file_name[name=?]", "upload[file_name]"
      assert_select "input#upload_content_type[name=?]", "upload[content_type]"
      assert_select "input#upload_binary_id[name=?]", "upload[binary_id]"
      assert_select "input#upload_size[name=?]", "upload[size]"
    end
  end
end
