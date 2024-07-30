class AddPositionToTexts < ActiveRecord::Migration[7.1]
  def change
    add_column :texts, :position, :integer, default: 0
  end
end
