class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :content
      t.integer :owner_id
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
