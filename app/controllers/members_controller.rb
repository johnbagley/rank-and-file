class MembersController < ApplicationController

  def create
    redirect_to search_result_path(params[:member][:name])
  end

end
