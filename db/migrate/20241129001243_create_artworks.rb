class CreateArtworks < ActiveRecord::Migration[8.0]
  def change
    create_table :artworks do |t|
      t.references :artist
      t.timestamps
    end
  end
end
