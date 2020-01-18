class SignUpPage
  attr_accessor :signInTab, :btnCreate, :nameTxt, :emailTxt, :passwordTxt , :rePasswordTxt, :btnCreateAccount, :validationNumber, :verifyBtn

  def initialize(browser)
    @browser = browser
    @signInTab = @browser.element(:id => "nav-link-accountList")
    @btnCreate = @browser.element(:id => "createAccountSubmit")
    @nameTxt = @browser.text_field(:id => "ap_customer_name")
    @emailTxt = @browser.text_field(:id => "ap_email")
    @passwordTxt = @browser.text_field(:id => "ap_password")
    @rePasswordTxt = @browser.text_field(:id => "ap_password_check")
    @btnCreateAccount = @browser.element(:id => "continue")
    @otpNumber = @browser.text_field(:xpath => '/html/body/div[1]/div[2]/div/div/div/div/div/div[1]/form/div[2]/input')
    @verifyBtn = @browser.element(:id => "a-autoid-0-announce")
  end

  def visit
    @browser.goto "https://www.amazon.com"
  end

  def clickSignInTab()
    @signInTab.click
  end

  def clickCreateYourAmazonAccountButton
    @btnCreate.click
  end

  def enterName(name)
    @nameTxt.set(name)
  end

  def enterEmail(email)
    @emailTxt.set email
  end

  def enterPassword(password)
    @passwordTxt.set password
  end

  def reEnterPassword(repassword)
    @rePasswordTxt.set repassword
  end

  def clickCreateButton
    @btnCreateAccount.click
  end

  def enterOtp(otp)
    @otpNumber.set otp
  end

  def clickVerifyButton
    @verifyBtn.click
  end

  def VerifyHomePage()
    @browser.element(:text => "Hello, Immanuel")
  end

  def VerifyErrorSignUpPage()
    @browser.element(:text => "Passwords must match ")
  end

end

