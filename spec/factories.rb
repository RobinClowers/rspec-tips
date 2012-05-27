FactoryGirl.define do
  factory :user do
    name "Bob Smith"
    email "bob@smith.com"
    admin false
  end

  factory :admin, :class => :user do
    name "Admin User"
    email "admin@somewhere.com"
    admin true
  end
end
