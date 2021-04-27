class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:member).permit(:username, :email, :password, :password_confimation)
  end

  def account_update_params
    params.require(:member).permit(:username, :email, :password, :password_confimation, :current_password)
  end

end