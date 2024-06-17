class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.integer :user_id
      t.string :civilite
      t.string :type
      t.string :nomdusage
      t.string :nomdefamille
      t.string :communnenaissance
      t.string :paysnaissance
      t.string :dptnaissance
      t.string :tel
      t.string :mobile
      t.string :email
      t.text :observations
      t.string :piecej

      t.timestamps
    end
  end
end
