class PagesController < ApplicationController
  def info
    before_action :authenticate_user!
  end
end
