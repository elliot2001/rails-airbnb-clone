class AddPhotoUrlToCastles < ActiveRecord::Migration[6.0]
  def change
    add_column :castles, :photo_url, :string
  end
end
