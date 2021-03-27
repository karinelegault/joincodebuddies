class SkillsController < ApplicationController

  def show
    @skill = Skill.find(params[:id])
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(name_for_skills)
    if @skill.save
      # redirect_to skill_path(@skill)
    else
      render :new
    end
  end

  private

  def name_for_skills
    params.require(:skill).permit(:name)
  end
end
