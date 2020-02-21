class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def show
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:id])
  end

  def create
    # @cocktail = Cocktail.find(params[:id])
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktails_path
    else
    render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :doses, :ingredients)
  end

end


# class ReviewsController < ApplicationController
#   def create
#     @restaurant = Restaurant.find(params[:restaurant_id])
#     @review = Review.new(review_params)
#     @review.restaurant = @restaurant
#     if @review.save
#       redirect_to restaurant_path(@restaurant)
#     else
#       render 'restaurants/show'
#     end
#   end
