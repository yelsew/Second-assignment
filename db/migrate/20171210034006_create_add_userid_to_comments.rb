class CreateAddUseridToComments < ActiveRecord::Migration[5.1]
  def change
    create_table :add_userid_to_comments do |t|
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
