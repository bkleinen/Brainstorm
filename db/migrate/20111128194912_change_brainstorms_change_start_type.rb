class ChangeBrainstormsChangeStartType < ActiveRecord::Migration
  def up
    change_column(:brainstorms,:start,:time)
  end

  def down
    change_column(:brainstorms,:start,:datetime)
  end
end
