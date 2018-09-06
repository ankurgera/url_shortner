class AddShortKeyToUrls < ActiveRecord::Migration[5.2]
  def change
    add_column :urls, :short_key, :integer
  end
end
