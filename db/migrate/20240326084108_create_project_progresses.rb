class CreateProjectProgresses < ActiveRecord::Migration[7.1]
  def change
    create_table :project_progresses do |t|
      t.references :project, null: false, foreign_key: true
      t.string :supplier
      t.string :task
      t.float :progress
      t.date :estimated_completion

      t.timestamps
    end
  end
end
