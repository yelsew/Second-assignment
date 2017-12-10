class CreateAddUseridToPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :add_userid_to_posts do |t|
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
