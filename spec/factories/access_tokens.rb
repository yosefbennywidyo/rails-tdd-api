FactoryBot.define do
  factory :access_token do
    #token is generated after initialize
    association :user
  end
end
