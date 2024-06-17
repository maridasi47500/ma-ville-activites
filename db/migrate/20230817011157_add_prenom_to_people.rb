class AddPrenomToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :prenom, :string
  end
end
