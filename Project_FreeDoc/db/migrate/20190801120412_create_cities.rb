class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name_town

      t.timestamps
    end
    #Rajout avec add_reference car table existait déjà
  add_reference :doctors, :city, foreign_key: true
  	add_reference :patients, :city, foreign_key: true
  	add_reference :appointments, :city, foreign_key: true
  end

end
