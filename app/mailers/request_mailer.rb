class RequestMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.request_mailer.request_new.subject
  #
  def request_new request
    @name = request.name
    @email = request.email
    @phone = request.phone
    @address = request.address
    @city = request.city
    @state = request.state
    @zip_code = request.zip_code
    @music_choice = request.music_choice
    @shipping_type = request.shipping_type
    @message = request.message
    

    mail to: "james@bzode.com", from: request.email
  end
end
