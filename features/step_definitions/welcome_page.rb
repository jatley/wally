Given /^there aren't any projects$/ do
end

When /^I view the welcome page$/ do
  visit "/"
end

Then /^I am redirected to the "([^"]*)" project page$/ do |project|
  sleep 1
  page.current_path.should include "/projects/#{project}"
end

When /^I select the project "([^"]*)"$/ do |project|
  select(project, :from => "projects")
end

Then /^"([^"]*)" is rendered$/ do |text|
  page.should have_content text
end

