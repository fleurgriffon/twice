class CreateNotionsArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles_notions do |t|
      t.belongs_to :notion
      t.belongs_to :article
    end
  end
end
