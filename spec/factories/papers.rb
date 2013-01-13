# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :paper do
    title "MyString"
    abstract "MyText"
    citation "MyString"
  end
end
