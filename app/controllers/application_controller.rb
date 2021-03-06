class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  # skip_before_action :authenticate_user!, only: [:show, :index]

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :photo, :nationality, :contact_number, :age, :dob, :gender])
  end
end
