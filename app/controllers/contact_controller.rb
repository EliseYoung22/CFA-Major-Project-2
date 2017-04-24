class ContactController < ApplicationController
  def index
  end

  def mail
    if params[:contact]
      email =  params[:contact][:email]
      message = params[:contact][:message]

      if email.present? || message.present?
          # Tell the UserMailer to send a welcome email after save
        ContactMailer.send_contact_email(email, message).deliver_now
        redirect_to '/contact', notice: 'Email sent!'
      else
        flash[:warning] = "Please fill out the form"
        redirect_to '/contact'
      end
    end
  end
  #
  # def help_request
  #   if params[:contact]
  #     email =  params[:contact][:email]
  #   ContactMailer.help_request_email(current_user.email).deliver_now
  #   redirect_to '/pages/home'
  #   end
  # end

  def help_request
    ContactMailer.help_request(current_user.email).deliver_now
    redirect_to '/conversations'
  end
end
