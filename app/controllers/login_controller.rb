class LoginController < ApplicationController
  def index

  end

  def create
    customer = Customer.find_by_email(params[:email])
    if customer && customer.authenticate(params[:password])
      session[:customer_id] = customer.id
      redirect_to dashboard_path, notice: "Logged in"

    else
      redirect_to login_path, alert: "Opps, someting weng worng. Try again."
    end
  end
end
