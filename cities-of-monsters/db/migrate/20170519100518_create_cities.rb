class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :health
      t.string :image_url

      t.timestamps
    end
  end
end
