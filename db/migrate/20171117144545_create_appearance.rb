class CreateAppearance < ActiveRecord::Migration[5.0]
  def change
    create_table :appearances do |t|
      t.integer :episode_id
      t.integer :guest_id
      t.integer :guest_rating
    end
  end
end
