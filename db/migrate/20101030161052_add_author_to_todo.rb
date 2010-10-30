class AddAuthorToTodo < ActiveRecord::Migration
  def self.up
    add_column :todos, :author, :string
  end

  def self.down
    remove_column :todos, :author
  end
end
