Then(/^the response code is '(.*)'$/) do |status|
  expect("#{@response.code}").to eq(status)
end