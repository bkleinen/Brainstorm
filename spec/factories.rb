FactoryGirl.define do
  factory :user do
    name "User Name"
    email "someone@somehost.xxx"
    login "MyString"
    password "geheim"
    password_confirmation "geheim"
  end
  factory :logged_in_user , :class => User do
    name "LoggedIn"
    email "loggedin@somehost.xxx"
    login "logger"
    password "geheim"
    password_confirmation "geheim"
  end
  factory :user_session do
    login "logger"
    password "geheim"
  end
end
