class Cotizesccam < ApplicationRecord
	numeroMinimoCaracteresNombreCliente = 3
	numeroMaximoCaracteresNombreCliente = 25
	expresionRegularEmailValido = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :colchon, presence: true
	validates :material, presence: true
	validates :color, presence: true
	validates :cantidad, presence: true
	validates :correo, presence: true, format: {with: expresionRegularEmailValido}
	validates :nombre, presence: true, length: {minimum: numeroMinimoCaracteresNombreCliente, maximum: numeroMaximoCaracteresNombreCliente}
end
