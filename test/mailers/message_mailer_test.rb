require 'test_helper'

class MessageMailerTest < ActionMailer::TestCase

  test "contact_me" do
    message = Message.new name: 'Rudy',
                          email: 'rudy@example.com',
                          body: 'hello, how are you doing?'

    email = MessageMailer.contact_me(message)

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal 'Message from www.responseblueprint.com', email.subject
    assert_equal ['james@bzode.com'], email.to
    assert_equal ['rudy@example.com'], email.from
    assert_match /hello, how are you doing?/, email.body.encoded
  end
end