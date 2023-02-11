class CreateUrls < ActiveRecord::Migration[7.0]
  def change
    create_table :urls do |t|
      t.string :url
      t.string :shortened_url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
