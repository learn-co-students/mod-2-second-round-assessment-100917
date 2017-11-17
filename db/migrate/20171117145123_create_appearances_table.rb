class CreateAppearancesTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :episodes, :guests, table_name: :appearances
  end
end
