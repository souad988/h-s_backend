class Users::RegistrationsController < Devise::RegistrationsController
  include RackSessionsFix
  respond_to :json
  skip_before_action :verify_authenticity_token, only: :create

  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password)
  end

  def respond_with(current_user, _opts = {})
    p('current_user: ', current_user, 'params: ', params[:name])
    if resource.persisted?
      render json: {
        status: { code: 200, message: 'Signed up successfully.' },
        data: UserSerializer.new(current_user).serializable_hash[:data][:attributes]
      }
    else
      p 'resource.errors.full_messages.to_sentence: ', resource.errors.full_messages.to_sentence
      render json: {
        error: { message: "User couldn't be created successfully. #{current_user.errors.full_messages.to_sentence}" }
      }, status: :unprocessable_entity
    end
  end
end
