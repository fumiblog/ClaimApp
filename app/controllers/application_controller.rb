class ApplicationController < ActionController::Base


  protected
    def configure_permitted_parameters
      devise_parameter_sanitaizer.permit(
        :sign_up, keys: [
          :company,
          :postal_code,
          :address,
          :telephone
        ]
      )
    end
end
