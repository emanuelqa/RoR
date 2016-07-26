class Prato < ActiveRecord::Base

	has_and_belongs_to_many :restaurantes
	has_one :receitum

	validate :validate_presence_of_more_than_one_restaurante

	validates_presence_of :nome, message: "Deve ser preenchido"
	validates_uniqueness_of :nome, message: "Nome já cadastrado"

	private
	def validate_presence_of_more_than_one_restaurante
	  errors.add("restaurantes", "deve haver ao menos um restaurante") if restaurantes.empty?
	end

end
