class PagesController < ApplicationController
  def home
      @castle = Castle.new
      @castles = Castle.all

  end
end
