"""
This is mouse.py. Woo yeah.

It contains a mouse class. Woo yeah.

"""


class Mouse():
	"""
	This is a Mouse.
	
	Mice are pests.
	
	I am writing some new stuff about mice.
	"""
	
	def __init__(self, name, age):
		"""Init a Mouse

		:param name: The name of the Mouse. 
		:type name: str. 
		:param age: The age of the Mouse. 
		:type age: int. 
		:returns: Mouse

		""" 
		self.name = name
		self.age = age
		
	def squeak(self, hungry):
		"""Makes a Mouse noise.

		:param hungry: If the Mouse is hungry. 
		:type hungry: bool. 
		:returns: str

		""" 
		if hungry:
			return "Scatter"
		else:
			return "Squeak"
		
	