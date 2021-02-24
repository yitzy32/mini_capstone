class Api::ProductsController < ApplicationController
  def laptop
    render "laptop.json.jb"
  end
end
