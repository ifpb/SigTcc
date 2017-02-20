module SessionsHelper

  def log_in(usuario)
    session[:usuario_id] = usuario.id
  end

  def log_coord(perfil)
    session[:perfil] = perfil
  end

  def current_user
    @current_user ||= Usuario.find_by(id: session[:usuario_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:usuario_id)
    @current_user = nil
  end

end
