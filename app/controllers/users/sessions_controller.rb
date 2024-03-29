class Users::SessionsController < Devise::SessionsController
  skip_before_action :verify_authenticity_token, only: :create
  include RackSessionsFix
  respond_to :json

  private

  def sign_in_params
    params.require(:user).permit(:email, :password)
  end

  def respond_with(resource, _opts = {})
    p('resource and params : ', resource, params)
    if resource.persisted?
      render json: {
        status: {
          code: 200, message: 'Logged in successfully.',
          data: { user: UserSerializer.new(resource).serializable_hash[:data][:attributes],
                  token: current_token }
        }
      }, status: :ok
    else
      render json: {
        status: {
          code: 401, message: 'Invalid email or password.',
          data: { user: UserSerializer.new(resource).serializable_hash[:data][:attributes] }
        }
      }, status: :unauthorized
    end
  end

  def respond_to_on_destroy
    if request.headers['Authorization'].present?
      jwt_payload = JWT.decode(request.headers['Authorization'].split.last,
                               Rails.application.credentials.devise_jwt_secret_key!).first
      current_user = User.find(jwt_payload['sub'])
    end

    if current_user
      render json: {
        status: 200,
        message: 'Logged out successfully.'
      }, status: :ok
    else
      render json: {
        status: 401,
        message: "Couldn't find an active session."
      }, status: :unauthorized
    end
  end

  def current_token
    request.env['warden-jwt_auth.token']
  end
end
