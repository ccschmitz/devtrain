FactoryGirl.define do
  factory :user do
    first_name 'Chris'
    last_name 'Schmitz'
    sequence(:email) { |n| "user#{n}@devtra.in" }
    password 'password'
    password_confirmation 'password'
  end

  factory :lesson do
    name 'Some lesson'
  end

  factory :series do
    sequence(:name) { |n| "Series #{n}" }
  end

  factory :tag, class: ActsAsTaggableOn::Tag do
    sequence(:name) { |n| "Tag #{n}" }
  end
end
