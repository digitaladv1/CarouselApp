class AddUploadToPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :upload, :string
  end
end
