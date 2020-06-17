class DescriptionsController < ApplicationController
  before_action :set_cocktail, except: [:destroy]
  def new
    binding.pry
    @description = Description.new
  end

  def create
      if @cocktail.description != nil
      @cocktail.description.delete
      # binding.pry
      end
      @description = Description.new(description_params)
      @description.cocktail = @cocktail
      @cocktail.description = @description
    if @description.save
      redirect_to cocktail_path(@cocktail)
    else
    render :new
    end
  end

  def edit
    binding.pry
    @description.delete
    @description = Description.new(description_params)
    @description.cocktail = @cocktail
    if @description.save
      redirect_to cocktail_path(@cocktail)
    else
    render :new
    end  end

    def update
      binding.pry
    end

  private
    def set_cocktail
      @cocktail = Cocktail.find(params[:cocktail_id])
    end

    def description_params
      params.require(:description).permit(:how_to, :cocktail_id)
    end
end

  # def edit
  #   @description = Description.find(params[:id])
  #   @description = Description.new
  # end
