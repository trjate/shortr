class AddShortenedToLinks < ActiveRecord::Migration
  def change
    add_column :links, :shortened, :string
  end
end
