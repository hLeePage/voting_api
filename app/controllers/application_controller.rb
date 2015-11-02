class ApplicationController < ActionController::API
  UnauthenticatedError     = Class.new(ActionController::ActionControllerError)
  UnauthorizedError        = Class.new(ActionController::ActionControllerError)

  rescue_from UnauthenticatedError, with: :unauthenticated
  rescue_from UnauthorizedError, with: :unauthorized

  def authenticate_user user
    token = request.headers["Authorization"].split(' ')[1]
    raise UnauthenticatedError unless token
    user = user.authenticate(token)
    raise UnauthenticatedError unless user
    user
  end

  def unauthenticated(error)
    head :unauthorized
  end

  def unauthorized(error)
    head :forbidden
  end
end
