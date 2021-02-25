class Api::ProductsController < ApplicationController
  def laptop
    render "laptop.json.jb"
  end

  def hdmi
    render "hdmi.json.jb"
  end

  def pen
    render "pen.json.jb"
  end
end
