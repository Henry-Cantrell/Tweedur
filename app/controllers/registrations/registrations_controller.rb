# frozen_string_literal: true

class Registrations::RegistrationsController < Devise::RegistrationsController
   
  private

  def sign_up_params
    params.require(:user).permit(:last_name, :email, :password, :password_confirmation)
  end

end
