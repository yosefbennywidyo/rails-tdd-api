FactoryBot.define do
  factory :user do
    sequence(:login) { |n| "fybwid#{n}" }
    name "Yosef Benny"
    url "http://example.com"
    avatar_url "http://example.com/avatar"
    provider "github"
  end
end
