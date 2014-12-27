class AddVenuAddressDetailsToWorkshops < ActiveRecord::Migration
  def change
    add_column :workshops, :venue_address_1, :string
    add_column :workshops, :venue_address_2, :string
    add_column :workshops, :venue_city, :string
    add_column :workshops, :venue_region, :string
    add_column :workshops, :venue_postal_code, :string
    add_column :workshops, :venue_latitude, :float
    add_column :workshops, :venue_longitude, :float
  end
end
