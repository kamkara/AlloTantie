class ApplicationController < ActionController::Base
    #Cross-Site Request Forgery (CSRF protection
    protect_from_forgery with: :exception

    #devise custom fields
    before_action :configure_permitted_parameters, if: :devise_controller?

    # DELETE /resource
    def destroy
        resource.soft_delete
        Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name)
        set_flash_message :notice, :destroyed
        yield resource if block_given?
        respond_with_navigational(resource){ redirect_to after_sign_out_path_for(resource_name) }
    end

    def after_sign_up_path_for(resource)
        root_path
    end
  protected

    def configure_permitted_parameters
      user_params = [:username, :role, :slug, :contact, :terms, :location, :email]
        
      devise_parameter_sanitizer.permit :sign_up, keys: user_params
      devise_parameter_sanitizer.permit :account_update, keys: user_params
    end
end
