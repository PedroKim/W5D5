class CreatePolls < ActiveRecord::Migration[5.2]
  def change
    create_table :polls do |t|
      t.integer :author_id, null: false
      t.string :title

      t.timestamps
    end
  end
end
