class ContactMailer < ApplicationMailer
  default from: 'caring@caring.com'

  def send_contact_email(email, message)
    @email = email
    @message = message
    mail(to: 'eliseyoung_4@hotmail.com', subject: 'New message from website') do |format|
      format.html { render 'send_contact_email' }
      format.text { render 'send_contact_email' }
    end
  end

  def help_request(email)
    @email = email
    mail(to: 'eliseyoung_4@hotmail.com', subject: 'New help request') do |format|
      format.html { render 'help_request' }
      format.text { render 'help_request' }
    end
  end
end
