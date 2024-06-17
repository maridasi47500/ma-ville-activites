class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :pic
      t.string :text
      t.string :type

      t.timestamps
    end
  end
end
