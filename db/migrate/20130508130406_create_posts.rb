class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :service_provider_id
      t.integer :post_id
      t.string :name
      t.string :author
      t.text :description

      t.timestamps
    end
  end
end
