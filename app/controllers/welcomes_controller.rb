class WelcomesController < ApplicationController
  def index
    @member = Member.new
  end
end
