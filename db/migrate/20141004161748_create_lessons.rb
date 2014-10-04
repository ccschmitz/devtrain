class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :slug
      t.text :content
      t.references :series, index: true

      t.timestamps null: false
    end
  end
end
