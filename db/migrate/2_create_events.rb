class CreateEvents < ActiveRecord::Migration[5.2]
	def change
		create_table :events do |t|
			t.references :user
			t.string :title	, limit: 64
			t.string :address	, limit: 128
			t.string :seats	, limit: 16
			t.string :duration	, limit: 32
			t.decimal :price	, precision: 8, scale: 2

			t.timestamps
		end
		add_index :events, [:user_id, :title]
	end
end
