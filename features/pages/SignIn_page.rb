class SignInPage
  attr_accessor :signInTab, :txtEmail, :txtPassword, :btnContinue, :btnSignIn

  def initialize(browser)
    @browser = browser
    @signInTab = @browser.element(:id => "nav-link-accountList")
    @txtEmail = @browser.text_field(:id => "ap_email")
    @btnContinue = @browser.element(:id => "continue")
    @txtPassword = @browser.text_field(:id => "ap_password")
    @btnSignIn = @browser.element(:id => "signInSubmit")
  end

  def visit
    @browser.goto "https://www.amazon.com"
  end

  def clickSignInTab()
    @signInTab.click
  end

  def enterEmail(email)
    @txtEmail.set email
  end

  def clickContinueBtn
    @btnContinue.click
  end

  def enterPassword(password)
    @txtPassword.set password
  end

  def clickSignInBtn
    @btnSignIn.click
  end

  def VerifyHomePage()
    @browser.element(:text => "Hello, Immanuel")
  end

  def VerifyErrorSignInPage()
    @browser.element(:text => "We cannot find an account with that email address").wait_until_present
  end
end
