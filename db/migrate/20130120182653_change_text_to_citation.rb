class ChangeTextToCitation < ActiveRecord::Migration
  def change
    change_table :papers do |t|
      t.change :citation, :text
    end
  end
end
