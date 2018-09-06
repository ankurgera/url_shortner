class ChangeShortUrlDataType < ActiveRecord::Migration[5.2]
  def change
  	change_column :urls, :short_url, :string
  end
end
