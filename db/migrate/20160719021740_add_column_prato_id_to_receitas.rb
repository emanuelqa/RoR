class AddColumnPratoIdToReceitas < ActiveRecord::Migration
  def change
    add_column :receita, :prato_id, :integer
  end
end
