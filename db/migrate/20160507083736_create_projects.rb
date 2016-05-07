class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.float :latitude
      t.float :longitude
      t.string :name
      t.string :address
      t.string :title

      t.timestamps null: false
    end
  end
end
