### When ###
When /I go to the\s+(.*)/ do |page_name|
    visit path_to(page_name)
end

When /^I fill in "(.*)" with "(.*)"$/ do |field, text|
    fill_in field, with: text
end

When /^I press "(.*)" button$/ do |button_text|
    click_button button_text
end



### Then ###
Then /^I should see "(.*)" message$/ do |message_text|
    page.should have_content message_text
end

Then /save and open page/ do
    save_and_open_page
end