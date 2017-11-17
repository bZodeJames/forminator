require 'test_helper'

class EstimateMailerTest < ActionMailer::TestCase
  test "estimate_new" do
    mail = EstimateMailer.estimate_new
    assert_equal "Estimate new", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
