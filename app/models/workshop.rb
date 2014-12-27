class Workshop < ActiveRecord::Base

  validates :name, presence: true
  validates :description, presence: true

  def self.refresh
    conn = Faraday.new(url: "https://www.eventbriteapi.com") do |req|
      req.adapter Faraday.default_adapter

      # Chris's organizer id: 7593828287
      # Tim's organizer id: 7808542841
      #
      req.params['organizer.id'] = "7808542841"
    end

    conn.authorization :Bearer, "2GDA75C44FFSKX6MATRI"

    response = conn.get "/v3/events/search/"

    response_body = JSON.parse(response.body).with_indifferent_access

    workshops = []

    if response.status == 200
      response_body[:events].each do |event|
        workshop = find_or_create_by(event_id: event[:event_id])
        if workshop
          workshops << workshop
          workshop.tap do |w|
            w.name = event[:name][:text]
            w.description = event[:description][:text].to_s
            w.url = event[:url]
            w.organizer = event[:organizer][:name]
            w.venue_name = event[:venue][:name]
            w.venue_address_1 = event[:venue][:address][:address_1]
            w.venue_address_2 = event[:venue][:address][:address_2]
            w.venue_city = event[:venue][:address][:city]
            w.venue_region = event[:venue][:address][:region]
            w.venue_postal_code = event[:venue][:address][:postal_code]
            w.venue_latitude = event[:venue][:address][:latitude]
            w.venue_longitude = event[:venue][:address][:longitude]
            w.capacity = event[:capacity]
            w.status = event[:status]
            w.starts_at = event[:start][:utc]
            w.ends_at = event[:end][:utc]
          end
        end
        workshop.save
      end
    else
      p "error code: #{response.status}, description: #{response_body["error_description"]}"
    end

    workshops
  end

  def venue_map_url
    params = { q: [venue_name, venue_address_1, venue_address_2, venue_city_region, venue_postal_code].compact.join(","),
               ll: [venue_latitude, venue_longitude].join(",") }
    "https://maps.google.com/?#{params.to_query}"
  end

  def venue_city_region
    [venue_city, venue_region].compact.join(", ")
  end

end
