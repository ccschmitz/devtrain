class AddDetailsToWorkshops < ActiveRecord::Migration
  def change
    change_table :workshops do |t|
      t.string :event_id, :url, :organizer, :organizer_url, :status, :currency_code
      t.integer :capacity
    end
  end
end
