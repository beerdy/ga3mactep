class AddValueToPage < ActiveRecord::Migration
  def change
    add_column :pages, :value, :string
  end
end
