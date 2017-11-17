class EstimateMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.estimate_mailer.estimate_new.subject
  #
  def estimate_new(estimate)
    @first_name = estimate.first_name
    @last_name = estimate.last_name
    @email = estimate.email
    @phone = estimate.phone
    @contact_time = estimate.contact_time
    @house_number = estimate.house_number
    @street_name = estimate.street_name
    @address_two = estimate.address_two
    @city = estimate.city
    @state = estimate.state
    @zip_code = estimate.zip_code
    @square_feet = estimate.square_feet
    @bedrooms = estimate.bedrooms
    @bathrooms = estimate.bathrooms
    @year_built = estimate.year_built
    @property_type = estimate.property_type
    @features = estimate.features
    @comments = estimate.comments

    mail to: "james@bzode.com", from: estimate.email
  end
end
