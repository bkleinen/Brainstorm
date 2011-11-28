class ChangeBrainstormsChangeStartType < ActiveRecord::Migration
  def up
    change_column(:brainstorms,:start,:string)
  end

  def down
    change_column(:brainstorms,:start,:datetime)
  end
end
