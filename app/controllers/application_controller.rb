class ApplicationController < ActionController::Base
  HMAC_SCRET = 'my$ecretK3y'
  ALGORITHM_TYPE = 'HS256'

  def encode_token(payload)
    JWT.encode(payload, HMAC_SCRET, ALGORITHM_TYPE)
  end
  
  def decoded_token
    if auth_header
      token = auth_header.split[1]
      
      begin
        JWT.decode(token, HMAC_SCRET, true, algorithm: ALGORITHM_TYPE)
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def set_current_user
    @current_user = User.find(decoded_token[0]['user']['id']) if decoded_token
  end

  private

  def auth_header
    request.headers['Authorization']
  end
end
