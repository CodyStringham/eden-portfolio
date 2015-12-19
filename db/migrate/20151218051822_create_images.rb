class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.string :details
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
