# frozen_string_literal: true

class Registrations::RegistrationsController < Devise::RegistrationsController
   
  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
