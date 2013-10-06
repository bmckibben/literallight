# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    product_id ""
    title "MyString"
    description "MyText"
    status 1
    display_order 1
    image "MyString"
    retail_price "9.99"
    link "MyString"
    author_last "MyString"
    author_first "MyString"
    publish_year 1
    genre "MyString"
    keyword "MyString"
    rating 1
    hugo 1
    nebula 1
  end
end
