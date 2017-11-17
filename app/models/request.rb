class Request
    include ActiveModel::Model
    attr_accessor :name,
                  :email,
                  :phone,
                  :address, 
                  :city,
                  :state,
                  :zip_code,
                  :music_choice,
                  :shipping_type,
                  :message

    validates   :name,
                :email,
                :phone,
                :address, 
                :city,
                :state,
                :zip_code,
                :music_choice,
                :shipping_type,
                :message,
                presence: true
    validates   :phone, phone: true
    validates   :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
    validates   :zip_code,
                numericality: true

end

