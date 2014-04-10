require 'spec_helper'

describe "requisitometrologicos/new" do
  before(:each) do
    assign(:requisitometrologico, stub_model(Requisitometrologico,
      :nome_do_requisito => "",
      :valor_do_requisito => 1.5,
      :filename => "MyString",
      :content_type => "MyString",
      :binary_id => 1,
      :size => 1
    ).as_new_record)
  end

  it "renders new requisitometrologico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", requisitometrologicos_path, "post" do
      assert_select "input#requisitometrologico_nome_do_requisito[name=?]", "requisitometrologico[nome_do_requisito]"
      assert_select "input#requisitometrologico_valor_do_requisito[name=?]", "requisitometrologico[valor_do_requisito]"
      assert_select "input#requisitometrologico_filename[name=?]", "requisitometrologico[filename]"
      assert_select "input#requisitometrologico_content_type[name=?]", "requisitometrologico[content_type]"
      assert_select "input#requisitometrologico_binary_id[name=?]", "requisitometrologico[binary_id]"
      assert_select "input#requisitometrologico_size[name=?]", "requisitometrologico[size]"
    end
  end
end
