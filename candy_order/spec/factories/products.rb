FactoryBot.define do
 factory :product do
   product_name           {"test"}
   product_company        {"test"}
   product_introduction   {"test"}
   product_price          {111}
   
   association :genre #外部キー所得
     
 end
end