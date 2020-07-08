class CreateTechnologies < ActiveRecord::Migration[6.0]
  def change
    create_table :technologies do |t|
      t.string :name
      t.string :purpose
      t.text :describe
      t.string :doc_link
      t.integer :rating

      t.timestamps
    end
  end
end
