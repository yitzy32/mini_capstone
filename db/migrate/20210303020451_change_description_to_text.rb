class ChangeDescriptionToText < ActiveRecord::Migration[6.1]
  def change
    :description, :string, :text
  end
end
