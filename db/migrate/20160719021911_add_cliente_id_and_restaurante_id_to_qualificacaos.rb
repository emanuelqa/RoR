class AddClienteIdAndRestauranteIdToQualificacaos < ActiveRecord::Migration
  def change
    add_column :qualificacaos, :cliente_id, :integer
    add_column :qualificacaos, :restaurate_id, :integer
  end
end
