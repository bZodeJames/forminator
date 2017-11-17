class Estimate
    include ActiveModel::Model
    attr_accessor :first_name, 
                :last_name, 
                :email, 
                :phone, 
                :contact_time, 
                :house_number, 
                :street_name, 
                :address_two, 
                :city, 
                :state,
                :zip_code,
                :square_feet,
                :bedrooms, 
                :bathrooms,
                :year_built,
                :property_type,
                :features,
                :comments

    validates   :first_name, 
                :last_name, 
                :email, 
                :phone, 
                :contact_time, 
                :house_number, 
                :street_name,
                :city, 
                :state, 
                :square_feet,
                :bedrooms, 
                :bathrooms,
                :year_built,
                :property_type,
                :features,
                :comments,
                presence: true
    validates   :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
    validates   :phone, phone: true   
    validates   :zip_code,
                :square_feet,
                :bedrooms, 
                :bathrooms,
                :year_built,
                numericality: true



end
