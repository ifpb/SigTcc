class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  before_action :set_locale
 
  def set_locale
     locale = params[:locale] || cookies[:locale]
     if locale.present?
       I18n.locale = locale
       cookies[:locale] = { value: locale, expires: 30.days.from_now}
     end
   end
end
