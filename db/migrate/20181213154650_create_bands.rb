class CreateBands < ActiveRecord::Migration[5.2]
  def change
    create_table :bands do |t|
      t.string :username
      t.string :password
      t.string :band_name
      t.string :bio
      t.string :genre
      t.string :band_members
      t.string :img_url

      t.timestamps
    end
  end
end
