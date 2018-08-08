# A node in a linked list has...
# "next" pointer
# "data"

class node:
	def __init__(self, data_val):
		self.data = data_val
		self.next = None

	def set_next(self, next):
		self.next = next

	def write(self):
		print(self.data)
		if self.next is not None:
			self.next.write()
	
	def remove(self, index):
		# Walk through the "next" pointers to get to the "index" element
		y = self
		for i in range (index-1):
			y = y.next


		# Need to adjust the "next" to the "next next" node
		z = y.next
		y.set_next(z.next)


x0 = node(0)
x1 = node(1)
x2 = node(2)
x3 = node(3)
x4 = node(4)

x0.set_next(x1)
x1.set_next(x2)
x2.set_next(x3)
x3.set_next(x4)

print("Before:")
x0.write()

x0.remove(2)

print("After:")
x0.write()