require 'spec_helper'

describe "songs/index" do
  before(:each) do
    assign(:songs, [
      stub_model(Song,
        :filepicker_url => "Filepicker Url",
        :title => "Title",
        :plays => 1,
        :length => 2
      ),
      stub_model(Song,
        :filepicker_url => "Filepicker Url",
        :title => "Title",
        :plays => 1,
        :length => 2
      )
    ])
  end

  it "renders a list of songs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Filepicker Url".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
