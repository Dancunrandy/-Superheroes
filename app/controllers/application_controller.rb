class ApplicationController < ActionController::Base
      protect_from_forgery with: :null_session
    rescue_from ActionController::UnknownFormat do
      render plain: "Invalid request format", status: :unsupported_media_type
    end
end
