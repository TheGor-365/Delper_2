class CreateTechnologies < ActiveRecord::Migration[6.0]
  def change
    create_table :technologies do |t|
      t.string :name, unique: true
      t.string :purpose
      t.text :describe
      t.string :technology_documentation_link
      t.integer :technology_rating

      t.timestamps
    end
  end
end
