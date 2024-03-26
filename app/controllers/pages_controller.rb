class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @projects = Project.all

    # Initialize an empty hash to store progress data for each supplier
    @project_progress = {}

    # Iterate over each project to fetch its progress data for each supplier
    @projects.each do |project|
      project_progress = ProjectProgress.where(project_id: project.id)

      # If progress data exists for the project, add it to the @project_progress hash
      if project_progress.any?
        @project_progress[project.name] = project_progress
      end
    end
  end
end
