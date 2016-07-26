class Restaurante < ActiveRecord::Base

	has_many :qualificacaos
	has_and_belongs_to_many :pratos
	has_many :comentarios, as: :comentavel

	validates_presence_of :nome, message: "Deve ser preenchido"
	validates_presence_of :endereco, message: "Deve ser preenchido"
	validates_presence_of :especialidade, message: "Deve ser preenchido"

	validates_uniqueness_of :nome, message: "Nome já cadastrado"
	validates_uniqueness_of :endereco, message: "Endereço já cadastrado"

end
