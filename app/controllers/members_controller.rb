class MembersController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update, :destroy]

  def index
    @members = Member.all
  end

  def show
  end

  def new
    @member = Member.new
  end

  def edit
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      redirect_to @member, notice: "#{@member.name} さんを作成しました"
    else
      render :new
    end
  end

  def update
    if @member.update(member_params)
      redirect_to @member, notice: "#{@member.name} さんに更新しました"
    else
      render :edit
    end
  end

  def destroy
    @member.destroy
    redirect_to members_url, notice: "#{@member.name} さんを削除しました"
  end

  private

    def set_member
      @member = Member.find(params[:id])
    end

    def member_params
      params.require(:member).permit(:name)
    end
end
