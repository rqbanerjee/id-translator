# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :identifier do
      real_id "MyString"
      generated_id "MyString"
      type_id 1
    end
end