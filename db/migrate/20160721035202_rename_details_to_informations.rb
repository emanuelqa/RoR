class RenameDetailsToInformations < ActiveRecord::Migration
  def change
      rename_column :qualificacaos, :restaurate_id, :restaurante_id
    end
end
