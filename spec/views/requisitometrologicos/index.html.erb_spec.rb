require 'spec_helper'

describe "requisitometrologicos/index" do
  before(:each) do
    assign(:requisitometrologicos, [
      stub_model(Requisitometrologico,
        :nome_do_requisito => "",
        :valor_do_requisito => 1.5,
        :filename => "Filename",
        :content_type => "Content Type",
        :binary_id => 1,
        :size => 2
      ),
      stub_model(Requisitometrologico,
        :nome_do_requisito => "",
        :valor_do_requisito => 1.5,
        :filename => "Filename",
        :content_type => "Content Type",
        :binary_id => 1,
        :size => 2
      )
    ])
  end

  it "renders a list of requisitometrologicos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Filename".to_s, :count => 2
    assert_select "tr>td", :text => "Content Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
