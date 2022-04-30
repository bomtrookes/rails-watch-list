class AddMovieRefToBookmarks < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookmarks, :movie_id
    add_reference :bookmarks, :movie, null: false, foreign_key: true
  end
end
