class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string     :comment, null:false
      t.integer :user_id
      t.integer :data_id

      t.timestamps
    end
  end
end
