class RemoveDateFromTodo < ActiveRecord::Migration
  def self.up
    remove_column :todos, :date
  end

  def self.down
    add_column :todos, :date, :date
  end
end
