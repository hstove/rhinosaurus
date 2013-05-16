require 'spec_helper'

describe "songs/show" do
  before(:each) do
    @song = assign(:song, stub_model(Song,
      :filepicker_url => "Filepicker Url",
      :title => "Title",
      :plays => 1,
      :length => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Filepicker Url/)
    rendered.should match(/Title/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
