# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :song do
    filepicker_url "MyString"
    title "MyString"
    plays 1
    length 1
  end
end
