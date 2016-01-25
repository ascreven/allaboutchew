class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :species
      t.string :name
      t.string :size
      t.string :sex
      t.integer :age
      t.string :description
    end
  end
end
