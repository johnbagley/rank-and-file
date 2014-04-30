class SearchResultsController < ApplicationController
  layout false

  def show
    @member_search_result = member_name
  end

  private

  def search_for_member_name
    last_name = member.name
    HTTParty.get("https://congress.api.sunlightfoundation.com/legislators?last_name=#{last_name}&apikey=acfdba04c94a4714b2c80d6c6a40329f")
  end

  def member_name
    first_name + " " + last_name
  end

  def last_name
    api_response["results"][0]["last_name"]
  end

  def first_name
    api_response["results"][0]["first_name"]
  end

  def api_response
    @api_response ||= search_for_member_name
  end

  def member
    @member ||= Member.find(params[:id])
  end

end
