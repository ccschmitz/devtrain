class AddVenueResourceUriToWorkshops < ActiveRecord::Migration
  def change
    add_column :workshops, :venue_resource_uri, :string
  end
end
