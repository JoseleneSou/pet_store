class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update]

  def index
    @pets = Pet.all
  end

  def banana
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def edit
  end

  def update
    if @pet.update(pet_params)
      redirect_to @pet, notice: "Cadastro atualizado com sucesso!"
    else
      render action: :edit
    end
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to root_path, notice: "Pet cadastrado com sucesso"
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :breed, :age)
  end
end
