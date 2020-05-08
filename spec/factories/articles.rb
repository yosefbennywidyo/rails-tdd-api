FactoryBot.define do
  factory :article do
    sequence(:title) { |title_number| "My article title #{title_number}" }
    sequence(:content) { |title_number| "My content article #{title_number}" }
    sequence(:slug) { |title_number| "my-article-title-#{title_number}" }

    association :user
  end
end
