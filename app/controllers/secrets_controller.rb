class SecretsController < ApplicationController
  before_action :require_login

  def show
    if session[:name]
      redirect_to artist_songs_path(@artist)
    end
  end

  private

def require_login
  return head(:forbidden) unless session.include? session[:name]
end

end
