class AssociatesController < ApplicationController
    def index
        #associates = @associates
        
        binding.pry
        respond_to do |format|
        format.html
        format.csv { send_data Associate.to_csv(@associates) }
      end
    end
    def user_params
        params.permit(:results)
    end
end
