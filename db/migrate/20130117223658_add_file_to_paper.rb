class AddFileToPaper < ActiveRecord::Migration
  def self.up
    add_attachment :papers, :file
  end

  def self.down
    remove_attachment :papers, :file
  end
end
