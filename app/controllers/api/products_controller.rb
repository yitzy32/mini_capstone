class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "products.json.jb"
  end

  def show
    @id = params[:id]
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      img_url: params[:img_url],
    )
    @product.save
    render "show.json.jb"
  end

  def update
    render "update.json.jb"
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
