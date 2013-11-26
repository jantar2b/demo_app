FactoryGirl.define do
  factory :user do
    name     "Mike Jack"
    email    "swiderski@yahoo.com"
    password "foobar"
    password_confirmation "foobar"
  end
end