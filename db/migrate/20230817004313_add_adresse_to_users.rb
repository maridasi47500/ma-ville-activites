class AddAdresseToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :adresse, :text
  end
end
