class ApplicationController < ActionController::Base
  
  def current_customer
    Customer.find_by(id: session[:customer_id])
  end

  helper_method :current_customer

  def authenticate_user
    if current_customer.nil?
      redirect_to login_path, alert: "You must login first."
    end
  end
end
