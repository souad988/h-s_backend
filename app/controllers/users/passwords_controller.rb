class Users::PasswordsController < Devise::PasswordsController
  respond_to :json

  # POST /resource/password
  def create
    print('reset password action params::', resource_params)
    self.resource = resource_class.send_reset_password_instructions(resource_params)

    if successfully_sent?(resource)
      render json: { message: 'Reset instructions sent successfully.' }, status: :ok
    else
      render json: { error: 'Unable to send reset instructions.' }, status: :unprocessable_entity
    end
  end

  # ...
end
