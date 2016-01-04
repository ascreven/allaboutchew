class ChangeDescriptionToText < ActiveRecord::Migration
  def change
    change_column :pets, :description, :text
  end
end
