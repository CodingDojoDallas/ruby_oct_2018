FactoryBot.define do
  factory :user do
    name  { "Oscar Vazquez" }
    email { "Oscar@gmail.com" } 
    password { "password" } 
    password_confirmation { "password" } 
  end
end
