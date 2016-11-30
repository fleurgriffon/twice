class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :titre
      t.text :content
      t.integer :year
      t.attachment :photo
      t.attachment :audio
      t.attachment :video

      t.timestamps
    end
  end
end
