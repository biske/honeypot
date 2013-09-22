# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
  	email 'foo@bar.com'
  	password 'Test0Test-'
  	first_name 'Foo'
  	last_name 'Bar'
  end
end
