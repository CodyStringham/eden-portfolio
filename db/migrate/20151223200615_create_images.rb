class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :caption
      t.boolean :featured
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
