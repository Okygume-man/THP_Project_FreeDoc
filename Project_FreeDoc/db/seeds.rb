 require 'faker'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
Speciality.destroy_all
City.destroy_all
DealWithIt.destroy_all

# seed Doctor
20.times do Doctor.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code, city_id: rand((City.first.id)..(City.last.id)))
end

# seed Patient
20.times do Patient.create(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, city_id: rand((City.first.id)..(City.last.id)))
end

# seed Speciality
20.times do Speciality.create(name: ["Généraliste", "Dentiste", "Ophtalmo", "Orthodentiste"].sample)
end

#seed City
20.times do City.create(name_town: Faker::Address.city)
end

20.times do
  Appointment.create(date: Faker::Date.forward(days: 60), rand((Doctor.first.id)..(Doctor.last.id)), patient: rand((Patient.first.id)..(Patient.last.id)), city_id: rand((City.first.id)..(City.last.id)))
end
