class PetsController < ApplicationController
  before_action :set_pet, only: [:show]

  # GET /pets
  # GET /pets.json
  def index
  end

  def find
    #code
  end

  # GET /pets/1
  # GET /pets/1.json
  def show
  end

  # GET /pets/new
  def new
    @pet = Pet.new
  end

  # GET /pets/1/edit
  def edit
  end

  # POST /pets
  # POST /pets.json
  def create
    @pet = Pet.new(pet_params)

    respond_to do |format|
      if @pet.save
        format.html { redirect_to @pet, notice: 'Pet was successfully created.' }
        format.json { render :show, status: :created, location: @pet }
      else
        format.html { render :new }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet
      # @pet = Pet.find_by(chip_number: params[:chip_number])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pet_params
      params.require(:pet).permit(
        :chip_number,
        :animal_type,
        :animal_name,
        :owner_name,
        :owner_email,
        :owner_email_confirmation,
        :owner_phone)
    end
end
