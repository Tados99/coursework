require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
 test "should return contact email" do
   mail = ContactMailer.contact_email("Abel Csanaki","example@wow.com", @message = "I have the freshest of the fresh news about our League!")
   assert_equal ['info@ultimateleaguehun.com'], mail.to
   assert_equal ['default@sender.com'], mail.from
 end
end
