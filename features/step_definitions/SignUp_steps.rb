Given(/^I launch amazon link pages$/) do
  @SignUpPage = SignUpPage.new(@browser)
  @SignUpPage.visit
end

#And(/^I wait 30 seconds$/) do
#  sleep(5)
#end

And(/^I click on signIn tabs$/) do
 @SignUpPage.clickSignInTab
end

And(/^I click create your Amazon account buttons$/) do
  @SignUpPage.clickCreateYourAmazonAccountButton
end

And(/^I fill the name field with valid name$/) do
  @SignUpPage.enterName("Immanuel Sitanggang")
end

And(/^I fill the email field with valid emails$/) do
  @SignUpPage.enterEmail("tes1111test@gmail.com")
end

And(/^I fill the password field with valid passwords$/) do
  @SignUpPage.enterPassword("test1234")
end

And(/^I fill the re-entered password field with valid password$/) do
  @SignUpPage.reEnterPassword("test1234")
end

And(/^I click create your amazon button$/) do
  @SignUpPage.clickCreateButton
end

When(/^I fill the otp field with valid otp$/) do
  @SignUpPage.enterOtp("135298")
end

Then(/^I click verify buttons$/) do
  @SignUpPage.verifyBtn
end

And(/^I fill the re-entered password field with invalid password$/) do
  @SignUpPage.reEnterPassword("test123")
end

Then(/^I failed to register and see error message$/) do
  @SignUpPage.VerifyErrorSignUpPage
end

#Then(/^I successfully register and see Home page$/) do
# @SignUpPage.VerifyHomePage
#end

