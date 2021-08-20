class OperateMembers::RolesController < ApplicationController
  before_action :set_group

  def update
    current_organizer = @group.group_members&.find_by(role: 1)
    if current_organizer.nil?
      target_members = @group.group_members.all
      selected_member = target_members.sample
      selected_member&.update(role: 1)
    else
      target_members = @group.group_members.filter{ |m| m.id != current_organizer.id  }
      selected_member = target_members.sample
      selected_member.update(role: 1)
      current_organizer.update(role: 0)
    end
    redirect_to group_path(@group), notice: 'Succeeded in setting the Organizer'
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end
end
