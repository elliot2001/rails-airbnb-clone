class AddFeaturesToCastles < ActiveRecord::Migration[6.0]
  def change
    add_column :castles, :features, :string
  end
end
