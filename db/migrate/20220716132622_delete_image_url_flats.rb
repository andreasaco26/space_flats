class DeleteImageUrlFlats < ActiveRecord::Migration[6.1]
  def change
    remove_column :flats, :images_url
  end
end
