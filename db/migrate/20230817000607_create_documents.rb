class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.integer :user_id
      t.string :mydocument
      t.string :title
      t.string :filename

      t.timestamps
    end
  end
end
