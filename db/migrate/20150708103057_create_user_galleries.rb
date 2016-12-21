class CreateUserGalleries < ActiveRecord::Migration
  def change
    create_table :user_galleries do |t|
			t.references :user, index: true, foreign_key: true
			t.integer :type, default: 0, null: false
			t.timestamps null: false
    end
  end
end
