class CreateUserSearches < ActiveRecord::Migration[7.0]
  def change
    create_table :user_searches do |t|
      t.string :iata_code
      t.json :weather_data
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
