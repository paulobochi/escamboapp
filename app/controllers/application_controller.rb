class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  layout :get_layout

  protected

  def get_layout
    if devise_controller?
      'admin'
    else
      'application'
    end
  end
end
