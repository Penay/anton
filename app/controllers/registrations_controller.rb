class RegistrationsController < Devise::RegistrationsController


  def create
    super
    logger.debug "#{session[:omniauth]}"
    session[:omniauth] = nil unless @user.new_record?
  end
  
  private
  
  def build_resource(*args)
    super
    if session[:omniauth]
      @user.apply_omniauth(session[:omniauth])
      @user.valid?
    end
  end


end
