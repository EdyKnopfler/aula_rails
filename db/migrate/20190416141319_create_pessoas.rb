class CreatePessoas < ActiveRecord::Migration[5.2]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :logradouro
      t.string :string
      t.integer :numero
      t.string :cep
      t.string :cidade
      t.string :estado

      t.timestamps
    end
  end
end
