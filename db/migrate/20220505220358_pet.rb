class Pet < ActiveRecord::Migration[7.0]
  def change
    add_column :pets, :deleted_at, :date
  end
end
