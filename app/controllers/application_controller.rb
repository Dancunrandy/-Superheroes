class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    rescue_from ActionController::UnknownFormat do
      render plain: "Invalid request format", status: :unsupported_media_type
    end
end
