class OperateMembers::ParticipatesController < ApplicationController
  before_action :set_group

  def update
    new_member_ids = []
    new_member_ids = @group.member_ids << params[:member_id]
    @group.member_ids = new_member_ids
    redirect_to group_path(@group)
  end

  def destroy
    new_member_ids = []
    new_member_ids = @group.member_ids.filter{ |member| member != params[:member_id].to_i }
    @group.member_ids = new_member_ids
    redirect_to group_path(@group)
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end
end
