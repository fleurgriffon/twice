class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :name
      t.date :birthday
      t.text :content

      t.timestamps
    end
  end
end
