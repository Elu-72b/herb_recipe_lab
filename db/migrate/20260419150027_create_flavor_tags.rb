class CreateFlavorTags < ActiveRecord::Migration[7.2]
  def change
    create_table :flavor_tags do |t|
      t.string :name

      t.timestamps
    end
  end
end
