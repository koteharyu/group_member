class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]

  def index
    @groups = Group.all
  end

  def show
    members = Member.all
    @not_participated_members = []
    members.each do |member|
      if !member.group_ids.include?(@group.id)
        @not_participated_members << member
      end
    end
  end

  def new
    @group = Group.new
  end

  def edit
  end

  def create
    @group = Group.new(group_params)

    if @group.save
      redirect_to @group, notice: "#{@group.name} を作成しました"
    else
      render :new
    end
  end

  def update
    if @group.update(group_params)
      redirect_to @group, notice: "#{@group.name} に更新しました"
    else
      render :edit
    end
  end

  def destroy
    @group.destroy
    redirect_to groups_url, notice: "#{@group.name} を削除しました"
  end

  private

    def set_group
      @group = Group.find(params[:id])
    end

    def group_params
      params.require(:group).permit(:name)
    end
end
