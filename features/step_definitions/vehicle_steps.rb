Given /^there is a vehicle with a license of "([^\"]*)"$/ do |license|
  Factory(:vehicle, :license => license)
end
