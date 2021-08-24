class OperateMembers::RolesController < ApplicationController
  before_action :set_group

  def update
    if @group.members.blank? || @group.members.length < 2
      redirect_to group_path(@group), notice: 'メンバーを追加してください'
      return
    end

    current_organizer = @group.group_members&.find_by(role: 1)
    if current_organizer.nil?
      target_members = @group.group_members.all
      selected_member = target_members.sample
      selected_member&.organizer!
    else
      target_members = @group.group_members.reject{ |m| m.id == current_organizer.id  }
      selected_member = target_members.sample
      selected_member&.organizer!
      current_organizer&.regular!
    end
    selected_member = Member.find(selected_member.member_id)
    redirect_to group_path(@group), notice: "幹事は #{selected_member.name}さん に決まりました"
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end
end
