class CreateHerbFlavorTags < ActiveRecord::Migration[7.2]
  def change
    create_table :herb_flavor_tags do |t|
      t.references :herb, null: false, foreign_key: true
      t.references :flavor_tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
