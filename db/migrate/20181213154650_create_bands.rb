class CreateBands < ActiveRecord::Migration[5.2]
  def change
    create_table :bands do |t|
      t.string :username
      t.string :password
      t.string :band_name
      t.string :bio

      t.timestamps
    end
  end
end
