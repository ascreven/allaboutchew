class PetsController < ApplicationController

  def index
    # if params[:animal_type] && params[:location]
    #   @pets = Petfinder.find_pets(params[:animal_type], params[:location], count: 50)
    # else
      @pets = Petfinder.find('dog', '20010')
    # end
    # @pets = Pet.where.not(picture: nil)
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.create!(pet_params)
    redirect_to "/pets/#{@pet.id}"
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.update(pet_params)
    redirect_to '/pets/'
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to "/pets"
  end

  def test_ajax
  end

  private
  def pet_params
    params.require(:pet).permit(:name, :age)
  end

# A list of the param names that can be used for filtering the Product list

end
