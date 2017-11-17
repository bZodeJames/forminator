class RequestController < ApplicationController

    def new
        @request = Request.new
    end

    def create
        @request = Request.new request_params
        
        if @request.valid?
            RequestMailer.request_new(@request).deliver_now
            redirect_to new_request_url, notice: "You have successfully submitted your request"
        else
            render :new
        end
    end

    private

    def request_params
        params.require(:request).permit(:name,
                                        :email,
                                        :phone,
                                        :address, 
                                        :city,
                                        :state,
                                        :zip_code,
                                        :music_choice,
                                        :shipping_type,
                                        :message
                                        )
    end

end
