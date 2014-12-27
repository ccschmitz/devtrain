class AddVenueNameToWorkshops < ActiveRecord::Migration
  def change
    add_column :workshops, :venue_name, :string
  end
end
