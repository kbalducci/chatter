class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.belongs_to :user
      t.string :message

      t.timestamps null: false
    end
  end
end
