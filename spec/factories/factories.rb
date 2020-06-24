FactoryBot.define do
    factory :user do
        sequence(:email) { |n| "test-#{n.to_s.rjust(3, "0")}@sample.com" }
        password { "123456" }
    end

    factory :store do
        name { "Some store" }
        description { "single store" }
    end

    factory :category do
        name { "Electronics" }
        description { "Some electronics" }
    end

    factory :product do
        name { "Product" }
        description { "Lorem Ipsum" }
        release_date { 1.day.ago }
        category
        store
        price { 9.99 }
    end
end