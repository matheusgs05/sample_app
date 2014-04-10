require 'spec_helper'

describe "user_groups/edit" do
  before(:each) do
    @user_group = assign(:user_group, stub_model(UserGroup,
      :nome => "MyString",
      :descricao => "MyText"
    ))
  end

  it "renders the edit user_group form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_group_path(@user_group), "post" do
      assert_select "input#user_group_nome[name=?]", "user_group[nome]"
      assert_select "textarea#user_group_descricao[name=?]", "user_group[descricao]"
    end
  end
end
