class CreateFunctionalTags < ActiveRecord::Migration[7.2]
  def change
    create_table :functional_tags do |t|
      t.string :name

      t.timestamps
    end
  end
end
