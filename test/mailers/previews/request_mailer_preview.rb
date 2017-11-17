# Preview all emails at http://localhost:3000/rails/mailers/request_mailer
class RequestMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/request_mailer/request_new
  def request_new
    message = request.new name: "Vern Kofford",
                          email: "vern@example.com",
                          phone: "(801)555-1234",
                          address: "1122 Some Street Rd",
                          city: "Lehi",
                          state: "Utah",
                          zip_code: "84121",
                          music_choice: "Country",
                          shipping_type: "2 day shipping",
                          message: "I would like to request this awesome music, and would potentially order many more CDs to send to all of my friends! Thank you! - Vern"



    RequestMailer.request_new
  end

end
