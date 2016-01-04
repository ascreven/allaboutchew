# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

SPECIES = ["bird", "cat", "dog", "horse", "pig" "smallfurry"]

ZIPCODES = [20001, 20002, 20003, 20004, 20005, 20006, 20007, 20008, 20009, 20010, 20011, 20012, 20015, 20016, 20017, 20018,
  20019, 20020, 20024, 20032, 20036, 20037, 20045, 20052, 20053, 20057, 20064, 20202, 20204, 20228, 20230, 20240, 20245,
  20260, 20307, 20317, 20319, 20373, 20390, 20405, 20418, 20427, 20506, 20510, 20520, 20535, 20540, 20551, 20553, 20560,
  20565, 20566, 20593]


PETFINDER = Petfinder::Client.new('5dd75b08057fefb722b816d1a75ee6b4', '71abe40062b3f19440f405a246f1e126')

PETFINDER.find_pets(SPECIES.sample, ZIPCODES.sample, count: 50).each do |pf|

  pet = Pet.find_or_create_by(species: pf.animal, name: pf.name, size: pf.size, sex: pf.sex, age: pf.age, description: pf.description)
  # pf.breeds.each do |breed|
  #   pet.breeds << Breed.find_or_create_by(name: breed)
  # end

  pf.photos.each do |photo|
    if !photo.medium.empty? || !photo.medium.nil?
      pet.picture = photo.medium
    elsif
      pet.picture = photo.large
    else
      pet.picture = photo.small
    end
  end
  # pf_shelter = PETFINDER.shelter(pf.shelter_id)
  # shelter = Shelter.find_or_create_by(name:pf_shelter.name, email: pf_shelter.email, phone: pf_shelter.phone, state: pf_shelter.state, city: pf_shelter.city, zip: pf_shelter.zip)
  # pet.zip_code = shelter.zip
  # shelter.save
  # pet.shelter_id = shelter.id

end
