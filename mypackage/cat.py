"""
This is cat.py. Hell yeah.

It contains a cat class. Hell yeah.

"""


class Cat():
	"""
	This is a cat.
	
	idk what to say, its just a damn cat.
	"""
	
	def __init__(self, name, age):
		"""Init a cat

		:param name: The name of the cat. 
		:type name: str. 
		:param age: The age of the cat. 
		:type age: int. 
		:returns: Cat

		""" 
		self.name = name
		self.age = age
		
	def meow(self, sleepy):
		"""Makes a cat noise.

		:param sleepy: If the cat is sleepy. 
		:type sleepy: bool. 
		:returns: str

		""" 
		if sleepy:
			return "Yawn"
		else:
			return "Meow"
		
	