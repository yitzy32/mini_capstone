class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "products.json.jb"
  end
end

# -------old way------
# def laptop
#   render "laptop.json.jb"
# end

# def hdmi
#   render "hdmi.json.jb"
# end

# def pen
#   render "pen.json.jb"
# end

# def any_product
#   @selected_product = params[:name]
#   render "any.json.jb"
# end
