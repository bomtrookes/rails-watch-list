class AddListRefToBookmarks < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookmarks, :list_id
    add_reference :bookmarks, :list, null: false, foreign_key: true
  end
end
