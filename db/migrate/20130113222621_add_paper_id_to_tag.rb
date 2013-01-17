class AddPaperIdToTag < ActiveRecord::Migration
  def change
    add_column :tags, :paper_id, :integer
  end
end
