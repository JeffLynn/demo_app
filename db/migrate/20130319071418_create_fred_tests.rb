class CreateFredTests < ActiveRecord::Migration
  def change
    create_table :fred_tests do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
