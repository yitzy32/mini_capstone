class Api::ProductsController < ApplicationController
  def index
    if params[:sort] == "price" && params[:sort_order] == "asc"
      @products = Product.order({ price: :asc })
      p "hello"
      # elsif params[:sort] == "price" && params[:sort_order] == "desc"
      #   @products = Product.order("price DESC")
    else
      @products = Product.all
    end
    render "index.json.jb"
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
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }
    end
  end

  def update
    @id = params[:id]
    @product = Product.find_by(id: params[:id])
    @product.description = params[:description]
    @product.price = params[:price]
    @product.img_url = params[:img_url]
    render "show.json.jb"
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
