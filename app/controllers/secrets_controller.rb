class SecretsController < ApplicationController
  before_action :require_login

  def show
    if session[:name]
  end

  private

def require_login
  return head(:forbidden) unless session.include? session[:name]
end

end
