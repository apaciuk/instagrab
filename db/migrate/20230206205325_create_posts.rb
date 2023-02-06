class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts, id: :uuid do |t|
      t.string :image, null: false, default: ""
      t.boolean :active, null: false, default: true
      t.references :user, null: false, foreign_key: true, type: :uuid 

      t.timestamps
    end
  end
end
