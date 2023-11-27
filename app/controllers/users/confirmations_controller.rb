class Users::ConfirmationsController < Devise::ConfirmationsController
    # GET /resource/confirmation?confirmation_token=abcdef
  def show
    user = User.find_by_confirmation_token(params[:confirmation_token])
    p "@resource: #{params[:email] }" 
    self.resource = resource_class.confirm_by_token(params[:confirmation_token])
    p "confirmation_token: #{resource.email }"
    if resource.errors.empty?
      redirect_to "http://localhost:3000/login" # Modify this URL to your frontend confirmation success page
    else
      # Handle resource errors or invalid token
      redirect_to "http://localhost:3000/confirmation_error/id=#{params[:email]}" # Modify this URL to your frontend confirmation error page
    end
  end

  def resend
    self.resource = resource_class.find_first_by_auth_conditions(email: params[:email])

    if resource && !resource.confirmed?
      resource.send_confirmation_instructions
      redirect_to "#{ENV['FRONTEND_URL']}/confirmation_sent" # Modify this URL to your frontend confirmation sent page
    else
      redirect_to "#{ENV['FRONTEND_URL']}/already_confirmed" # Modify this URL to your frontend already confirmed page
    end
  end
end
