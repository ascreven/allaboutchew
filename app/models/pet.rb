class PetFinder
  include HTTParty
    attr_reader :pets, :photo
    def initialize(animal, location)
      url = 'http://api.petfinder.com/pet.find?format=json&key={ENV[petfinder_key]}4&callback=?&location=20010.json'
      response = HTTParty.get(url)
      @pets = response['current_observation']['pets']
      # @photos = response['current_observation']['pets.photos']
      puts response
    end
end
# $.getJSON('http://api.petfinder.com/pet.find?format=json&key={ENV['petfinder_key']}&callback=?')
#   .done(function(petApiData) { alert('Data retrieved!'; })
#   .error(function(err) { alert('Error retrieving data!');
# });
