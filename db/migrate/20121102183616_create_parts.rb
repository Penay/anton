class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.text :body
      t.integer :post_id
      t.timestamps
    end
  end
end
