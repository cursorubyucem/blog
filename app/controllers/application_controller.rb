class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

def user_for_paper_trail
    #logged_in? ? current_member.id : 'Public user'  # or whatever
    seguridad_usuario_signed? ? current_seguridad_usuario.id : 'Public'
  end

end
