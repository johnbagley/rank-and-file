class SearchResultsController < ApplicationController

  def show
    @member = Member.find_by_name(params[:query][:name])
  end

end
