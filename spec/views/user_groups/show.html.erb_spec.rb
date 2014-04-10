require 'spec_helper'

describe "user_groups/show" do
  before(:each) do
    @user_group = assign(:user_group, stub_model(UserGroup,
      :nome => "Nome",
      :descricao => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/MyText/)
  end
end
