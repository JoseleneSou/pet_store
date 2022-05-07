class AlterTypeTelephoneColumnFromIntegerToString < ActiveRecord::Migration[7.0]
  def change
    rename_column :owners, :telephone, :phone
    change_column :owners, :phone, :string
  end
end
