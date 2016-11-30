class CreateNotions < ActiveRecord::Migration[5.0]
  def change
    create_table :notions do |t|
      t.string :name
      t.attachment :photo
      t.timestamps
    end
  end
end
