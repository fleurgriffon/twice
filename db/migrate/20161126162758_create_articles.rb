class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :titre
      t.text :content
      t.integer :year
      t.has_attached_file :photo
      t.has_attached_file :audio
      t.has_attached_file :video

      t.timestamps
    end
  end
end
