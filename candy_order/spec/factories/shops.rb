FactoryBot.define do
 factory :shop do
   name              {"test"}
   email                 {"test@gmail.com"}
   postal_code           {1111111}
   address               {"東京都"}
   telephone_number      {11111111111}
   password              {"00000000"}
   password_confirmation {"00000000"}
 end
end