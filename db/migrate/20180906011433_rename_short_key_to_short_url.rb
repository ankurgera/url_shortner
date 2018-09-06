class RenameShortKeyToShortUrl < ActiveRecord::Migration[5.2]
  def change
  	rename_column :urls, :short_key, :short_url
  end
end
