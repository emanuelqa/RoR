class CreateReceita < ActiveRecord::Migration
  def change
    create_table :receita do |t|
      t.text :conteudo

      t.timestamps null: false
    end
  end
end
