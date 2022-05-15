class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def banana
  end

  def show
    @pet = Pet.find params[:id]
  end

  def new
    @pet = Pet.new
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
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

  def pet_params
    params.require(:pet).permit(:name, :breed, :age)
  end
end
