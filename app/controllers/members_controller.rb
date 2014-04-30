class MembersController < ApplicationController

  def create
    @member = Member.find_or_create_by(member_params)
    redirect_to search_result_path(@member)
  end

  private

  def member_params
    params.require(:member).permit(:name)
  end

end
