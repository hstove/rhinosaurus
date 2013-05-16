require 'spec_helper'

describe "songs/edit" do
  before(:each) do
    @song = assign(:song, stub_model(Song,
      :filepicker_url => "MyString",
      :title => "MyString",
      :plays => 1,
      :length => 1
    ))
  end

  it "renders the edit song form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", song_path(@song), "post" do
      assert_select "input#song_filepicker_url[name=?]", "song[filepicker_url]"
      assert_select "input#song_title[name=?]", "song[title]"
      assert_select "input#song_plays[name=?]", "song[plays]"
      assert_select "input#song_length[name=?]", "song[length]"
    end
  end
end
