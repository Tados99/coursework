class ApplicationMailer < ActionMailer::Base
  default to: "info@ultimateleaguehun.com", from: "default@sender.com"
  layout 'mailer'
end
