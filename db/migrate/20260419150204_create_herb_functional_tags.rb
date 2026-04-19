class CreateHerbFunctionalTags < ActiveRecord::Migration[7.2]
  def change
    create_table :herb_functional_tags do |t|
      t.references :herb, null: false, foreign_key: true
      t.references :functional_tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
