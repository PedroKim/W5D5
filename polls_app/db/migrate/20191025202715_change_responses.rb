class ChangeResponses < ActiveRecord::Migration[5.2]
  def change
    change_table :responses do |t|
      t.rename :user_is, :user_id
    end
  end
end
