class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    # You can render your index.html.erb here
    # Example: render 'index'
  end
end
