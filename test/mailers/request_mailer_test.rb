require 'test_helper'

class RequestMailerTest < ActionMailer::TestCase
  test "request_new" do
    mail = RequestMailer.request_new
    assert_equal "Request new", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
