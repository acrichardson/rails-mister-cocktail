class AddHowToToDescriptions < ActiveRecord::Migration[5.2]
  def change
    add_column :descriptions, :how_to, :string
  end
end
