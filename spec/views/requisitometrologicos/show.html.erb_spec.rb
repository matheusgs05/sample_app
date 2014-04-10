require 'spec_helper'

describe "requisitometrologicos/show" do
  before(:each) do
    @requisitometrologico = assign(:requisitometrologico, stub_model(Requisitometrologico,
      :nome_do_requisito => "",
      :valor_do_requisito => 1.5,
      :filename => "Filename",
      :content_type => "Content Type",
      :binary_id => 1,
      :size => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/1.5/)
    rendered.should match(/Filename/)
    rendered.should match(/Content Type/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
