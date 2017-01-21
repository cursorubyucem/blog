class SeguridadUsuario < ActiveRecord::Base
	strip_attributes
	#has_paper_trail only: [:username]
	has_paper_trail ignore: [:apellidos]




validates :username, uniqueness: { message: 'Este usuario ya existe'},
	                     presence: { message: 'Requerido'}, 
	                     length: {maximum: 20, too_long: 'Demasiados caracteres'},
	                     format: {with: /\A[a-z]{0,20}\z/, message: 'Solo letras'} 

validates :nombres,      presence: { message: 'Requerido'}, 
	                     length: {maximum: 250, too_long: 'Demasiados caracteres'},
	                     format: {with: /\A[a-z]{0,20}\z/, message: 'Solo letras'} 

validates :apellidos,      presence: { message: 'Requerido'}, 
	                     length: {maximum: 20, too_long: 'Demasiados caracteres'},
	                     format: {with: /\A[a-z]{0,20}\z/, message: 'Solo letras'} 	                     	                     


has_many :entrada
has_many :comentarios

end
