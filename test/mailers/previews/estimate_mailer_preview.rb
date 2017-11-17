# Preview all emails at http://localhost:3000/rails/mailers/estimate_mailer
class EstimateMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/estimate_mailer/estimate_new
  def estimate_new
    
      message = Estimate.new  first_name: "James",
                              last_name: "Briggs",
                              email: "james@kindledhope.com",
                              phone: "(801)471-7493",
                              contact_time: "Anytime",
                              house_number: "11409",
                              street_name: "Oakmond Rd",
                              address_two: "",
                              city: "South Jordan",
                              state: "Utah",
                              zip_code: "84009",
                              square_feet: "1100",
                              bedrooms: "2",
                              bathrooms: "2",
                              year_built: "2007",
                              property_type: "Condo",
                              features: "Many great ones, new paint, walk in closet",
                              comments: "This is a great home! I have made many updates to it!"

      EstimateMailer.estimate_new message            
  end

end

