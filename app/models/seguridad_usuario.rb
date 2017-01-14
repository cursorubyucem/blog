class SeguridadUsuario < ActiveRecord::Base
	strip_attributes




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


end
