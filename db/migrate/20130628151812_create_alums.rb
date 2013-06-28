class CreateAlums < ActiveRecord::Migration
  def change
    create_table :alums do |t|
      t.string :first_name
      t.string :last_name
      t.string :cohort
      t.string :linkedin_url
      t.string :twitter_handle
      t.string :github_link
      t.string :city
      t.string :state
      t.string :title
      t.string :picture
      t.text :expertise

      t.timestamps
    end
  end
end
