class CreateDounans < ActiveRecord::Migration[5.0]
  def change
    create_table :dounans do |t|
      t.string :title
      t.string :content
      t.float :latitude
      t.float :longitude
      t.string :time
      t.string :access
      t.string :hp
      t.string :image_url
      t.integer :fee
      t.string :address

      t.timestamps
    end
  end
end
