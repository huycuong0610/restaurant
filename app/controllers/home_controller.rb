class HomeController < ApplicationController
  def index
  end
  def contact_us
  	
  end
  def menu
      case params[:sort_by]
      when "alpha"
          @sort_string = "name ASC"
      when "pricelow"
          @sort_string = "price ASC"
      when "pricehigh"
          @sort_string = "price DESC"
      else
          @sort_string = ""
      end
  	 if params[:section]
  	 	@food_items = FoodItem.where(section: params[:section]).order(@sort_string)
  	 else
  	 	@food_items = FoodItem.all.order(@sort_string)
  	 end
  end
end
