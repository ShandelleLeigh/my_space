class CreateFriends < ActiveRecord::Migration[5.1]
  def change
    create_table :friends do |t|
      t.string :name
      t.string :avatar
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
