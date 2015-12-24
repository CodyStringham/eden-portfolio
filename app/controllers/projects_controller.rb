class ProjectsController < ApplicationController

  before_action :require_login

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
    @project.images.build
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_path, notice: 'Project created.'
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(project_params)
      redirect_to projects_path, notice: 'Project updated.'
    else
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:id])
    if @project.destroy
      redirect_to projects_path, notice: "Project deleted."
    else
      redirect_to projects_path, notice: "Project could not be deleted."
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :date, :details, :image, images_attributes: [:id, :file, :featured, :_destroy] )
  end

end
