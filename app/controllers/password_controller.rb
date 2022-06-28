class PasswordController < ApplicationController
  before_action :authenticate_user
  def index
  end

  def create

    current_pass = params[:current_password]
    if current_customer.authenticate(current_pass)
      current_customer.update(update_password)
      redirect_to dashboard_path, notice: "Password has been changed."
    else
      redirect_to password_change_path, alert: "Opps, Someting weng worng. Try again."
    end
  end

  private
  def update_password
    params.permit(:password, :password_confirmation)
  end

end
