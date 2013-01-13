class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.string :title
      t.text :abstract
      t.string :citation

      t.timestamps
    end
  end
end
