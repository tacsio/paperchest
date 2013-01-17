class AddPaperIdToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :paper_id, :integer
  end
end
