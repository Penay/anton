class ApplicationController < ActionController::Base
  before_filter :load_teams

  def load_teams
    @posts = Post.all
  end
  protect_from_forgery

  def current_post
  	@current_post = Post.find(params[:id])
  end


  def skype_status(username)
  	require 'sinatra'
  	require 'net/http'
	require 'base64'
	  base_image = Net::HTTP.get(URI.parse("http://mystatus.skype.com/mediumicon/#{username}"))
	  tag("img", :src =>"data:image/png;base64,#{Base64.encode64(base_image)}")
  end
  helper_method :skype_status

end
