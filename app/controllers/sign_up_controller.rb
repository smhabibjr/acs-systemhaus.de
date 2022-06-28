class SignUpController < ApplicationController
  def index
    @new_customer = Customer.new
  end

  def create
    @new_customer = Customer.new(customer_params)
    if @new_customer.save
      session[:customer_id] = @new_customer.id
      redirect_to dashboard_path, notice: "Account has been successfully created"
    else
      redirect_to signup_path, alert: "Opps, Someting weng wrong. Try again."
    end
  end

  def destroy
    session[:customer_id] = nil
    redirect_to root_path, notice: "Log out"
  end

  private

  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
