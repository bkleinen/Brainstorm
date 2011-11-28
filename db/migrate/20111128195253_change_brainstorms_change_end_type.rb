class ChangeBrainstormsChangeEndType < ActiveRecord::Migration
  def up
    change_column(:brainstorms,:end,:time)
  end

  def down
    change_column(:brainstorms,:end,:datetime)
  end
end
