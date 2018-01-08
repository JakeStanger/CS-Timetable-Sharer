class CreateLessonTimes < ActiveRecord::Migration[5.1]
  def change
    create_table :lesson_times do |t|

      t.timestamps
    end
  end
end
