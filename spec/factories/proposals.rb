# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :proposal do
    proposals "MyString"
    body "MyText"
    user nil
  end
end
