Given(/^I launch amazon page$/) do
  @SignInPage = SignInPage.new(@browser)
  @SignInPage.visit
end

And(/^I click on signIn tab$/) do
  @SignInPage.clickSignInTab
end

And(/^I fill the email field with valid email$/) do
  @SignInPage.enterEmail("immanuelryo484@gmail.com")
end

And(/^I fill the email field with invalid email$/) do
  @SignInPage.enterEmail("immanuelryo484gmail.com")
end

And(/^I click continue button$/) do
  @SignInPage.clickContinueBtn
end

And(/^I fill the password field with valid password$/) do
  @SignInPage.enterPassword("sitanggang321")
end

When(/^I click signIn button$/) do
  @SignInPage.clickSignInBtn
end

Then(/^I successfully login and see Home page$/) do
 @SignInPage.VerifyHomePage
end

Then(/^I failed login and see error message$/) do
  @SignInPage.VerifyErrorSignInPage
end

