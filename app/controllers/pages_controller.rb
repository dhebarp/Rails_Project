class PagesController < ApplicationController
  before_acion :authorize

  def welcome
  end
end