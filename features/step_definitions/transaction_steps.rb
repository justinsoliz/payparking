Given /^there is a transaction for "([^\"]*)" minutes$/ do |minutes|
  Factory(:transaction, :minutes => minutes)
end

