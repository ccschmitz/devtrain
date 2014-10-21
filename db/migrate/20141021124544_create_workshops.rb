class CreateWorkshops < ActiveRecord::Migration
  def change
    create_table :workshops do |t|
      t.string :name
      t.text :description
      t.datetime :starts_at
      t.datetime :ends_at

      t.timestamps
    end
  end
end
