# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
  def contact_email
    ContactMailer.contact_email("Abel Csanaki","example@wow.com", @message = "I have the freshest of the fresh news about our League!")
  end
end
