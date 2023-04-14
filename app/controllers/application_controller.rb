class ApplicationController < ActionController::Base

  def index

    render({ :template => "/index.html.erb" })
  end

  def about

    render({ :template => "/about.html.erb" })
  end


end
