Given /^the following users are registered:$/ do |users_table|
    users_table.hashes.each do |user_row|
        user = FactoryGirl.build :user
        user.email = user_row[:email]
        user.password = user_row[:password]
        user.password_confirmation = user_row[:password]
        user.skip_confirmation!
        user.save!
    end
end

Given /^the following users are not registered:$/ do |users_table|
    User.destroy_all
end