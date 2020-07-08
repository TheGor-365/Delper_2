class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :technology_name
      t.string :lesson_author
      t.string :lesson_title
      t.string :lesson_purpose
      t.string :lesson_question
      t.text :lesson_answer
      t.text :lesson_body
      t.text :lesson_snippet
      t.text :lesson_example
      t.string :lesson_link
      t.string :lesson_rating

      t.timestamps
    end
  end
end
