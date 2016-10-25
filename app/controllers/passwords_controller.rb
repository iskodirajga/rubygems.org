class PasswordsController < Clearance::PasswordsController
  def find_user_for_create
    Clearance.configuration.user_model
      .find_by_normalized_email password_params[:email]
  end

  private

  def password_params
    params.require(:password).permit(:email)
  end
end
