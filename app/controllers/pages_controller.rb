class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    # Assuming you have a method to fetch progress data for each supplier
    project_a_progress = ProjectProgress.where(supplier: 'Supplier A')
    project_b_progress = ProjectProgress.where(supplier: 'Supplier B')
    project_c_progress = ProjectProgress.where(supplier: 'Supplier C')

    @project_progress = {
      'Supplier A' => project_a_progress,
      'Supplier B' => project_b_progress,
      'Supplier C' => project_c_progress
    }
  end
end
