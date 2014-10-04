class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
