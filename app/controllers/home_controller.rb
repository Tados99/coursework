class HomeController < ApplicationController
  def home
  end

  def standings
  end

  def contact
  end

  def request_contact
    name = params[:name]
    email = params[:email]
    message = params[:message]

# I decided to do a complete validation of the form, since it is important for an e-mail to have all the details I am asking for here

    if email.blank?
      flash[:alert] = I18n.t('home.request_contact.no_email')
    elsif name.blank?
      flash[:alert] = I18n.t('home.request_contact.no_name')
    elsif message.blank?
      flash[:alert] = I18n.t('home.request_contact.no_message')
    else
      ContactMailer.contact_email(name, email, message).deliver_now
      flash[:notice] = I18n.t('home.request_contact.email_sent')
    end
    redirect_to root_path
  end
end
