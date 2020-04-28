require 'rails_helper'

RSpec.describe Article, type: :model do
  it "should test that the Factory Bot is valid" do
    expect(FactoryBot.build :article).to be_valid
  end

  it "should validate the presence of the Title" do
    article = FactoryBot.build :article, title: ""

    expect(article).not_to be_valid
    expect(article.errors.messages[:title]).to include("can't be blank")
  end

  it "should validate the presence of the Content" do
    article = FactoryBot.build :article, content: ""

    expect(article).not_to be_valid
    expect(article.errors.messages[:content]).to include("can't be blank")
  end

  it "should validate the presence of the Slug" do
    # Slug is used by frontend to tell which URL will be use by the client
    # to identifies the Article, slug should be always present and uniq
    article = FactoryBot.build :article, slug: ""

    expect(article).not_to be_valid
    expect(article.errors.messages[:slug]).to include("can't be blank")
  end

  it "should validate the presence of the Slug" do
    article = FactoryBot.build :article

    invalid_article = FactoryBot.build :article, slug: article.slug
    expect(invalid_article).not_to be_valid
  end
end
