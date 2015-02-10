FactoryGirl.define do
  # factory :user do
  #   sequence(:name) { |n| "Michael Hartl#{n}" }
  #   sequence(:email) { |n| "michael#{n}@example#{n}.com" }
  #   password "foobar"
  #   password_confirmation "foobar"
  # end
  factory :user do
    name "Michael Hartl"
    email "michael@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
