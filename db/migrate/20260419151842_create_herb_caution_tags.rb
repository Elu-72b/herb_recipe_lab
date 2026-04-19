class CreateHerbCautionTags < ActiveRecord::Migration[7.2]
  def change
    create_table :herb_caution_tags do |t|
      t.references :herb, null: false, foreign_key: true
      t.references :caution_tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
