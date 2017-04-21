class ContactMailer < ApplicationMailer
  default from: 'aljosa@hotmail.com'


  def send_contact_email(email, message)
   @email = email
   @message = message
   mail(to: 'eliseyoung_4@hotmail.com', subject: 'New message from website') do |format|
         format.html { render 'send_contact_email' }
         format.text { render 'send_contact_email' }
       end
     end
 end
