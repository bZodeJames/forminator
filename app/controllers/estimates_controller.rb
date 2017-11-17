class EstimatesController < ApplicationController
    
    def new
        @estimate = Estimate.new
    end

    def create
        @estimate = Estimate.new estimate_params

        if @estimate.valid?
            EstimateMailer.estimate_new(@estimate).deliver_now
            redirect_to new_estimates_url, notice: "Your estimate request has been submitted"
        else
            render :new
        end
    end

private 

    def estimate_params
        params.require(:estimate).permit(:first_name, 
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
                                        )
    end
end
