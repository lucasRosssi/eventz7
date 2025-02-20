class AddSlugToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :slug, :string
  end
end
