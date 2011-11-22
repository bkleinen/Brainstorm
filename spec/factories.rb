FactoryGirl.define do
  factory :user do
    name "User Name"
    email "someone@somehost.xxx"
    login "MyString"
    password "geheim"
    password_confirmation "geheim"
  end
end
