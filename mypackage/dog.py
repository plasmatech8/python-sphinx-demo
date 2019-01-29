"""
This is dog.py. Heck yeah.

It contains a dog class. Heck yeah.

I can make some awesome looking html using the multiline comments in python!!!

The Class
~~~~~~~~~
"""


class Dog():
	"""
	This is a dog.
	
	Woo, its a damn dog!
	"""
	
	def __init__(self, name, size):
		"""Init a dog

		:param name: The name of the dog. 
		:type name: str. 
		:param size: The size of the dog. 
		:type size: int. 
		:returns: Dog

		""" 
		self.name = name
		self.size = size
		
	def bark(self, sleepy):
		"""Makes a dog noise.

		:param name: The name of the dog. 
		:type name: str. 
		:param size: The size of the dog. 
		:type size: int. 
		:returns: Dog
		:param sleepy: If the dog is sleepy. 
		:type sleepy: bool. 
		:returns: str

		""" 
		if self.size > 1 and sleepy == False:
			return "Woof"
		else:
			return "Bork"
			
			
"""
Other information
~~~~~~~~~~~~~~~~~

Note: idk what to write here, lol.
"""