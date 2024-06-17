class RenameTypeToMytypeFromPosts < ActiveRecord::Migration[7.1]
  def change
    rename_column :articles,:type, :mytype
  end
end
