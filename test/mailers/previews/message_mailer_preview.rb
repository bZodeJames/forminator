# Preview all emails at http://localhost:3000/rails/mailers/message_mailer
class MessageMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/message_mailer/contact_me
  def contact_me 
    message = Message.new name: 'Donovan Mitchell', 
                          email: 'dmitchell@example.com',
                          body: 'The Jazz are going to win today!'

    MessageMailer.contact_me message
  end

end