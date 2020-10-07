module ProcessDataConcern
  extend ActiveSupport::Concern

  def process_apartments(apartments)
    apartments_array = []

    apartments.each { |apartment| apartments_array << process_apartment_data(apartment) }

    apartments_array
  end

  
  def process_apartment_data(apartment)
    {
      id: apartment.id,
      address: apartment.address,
      rent: apartment.rent,
      reviews: apartment.reviews,
      amenities: apartment.amenities,
      deposit: apartment.deposit,
      sq_ft: apartment.sq_ft,
      lease_length: apartment.lease_length,
      images: process_images(apartment.images),
      type: apartment.type.name,
    }
  end
  
  # Helper method

  def process_images(images)
    images_array = []

    images.each do |image|
      images_array << { id: image.id, url: image.url }
    end

    images_array
  end
end