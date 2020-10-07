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
      images: apartment.images,
      type: apartment.type.name,
    }
  end

  def process_appointments(appointments)
    appointments_array = []

    appointments.each do |appointment|
      appointments_array << { 
                              id: appointment.id, 
                              date: appointment.date.to_s(:long), 
                              apartment_id: appointment.apartment_id,
                              apartment_address: appointment.apartment.address,
                              created_at: appointment.created_at.to_s(:long)  
                            }
    end

    appointments_array
  end
end