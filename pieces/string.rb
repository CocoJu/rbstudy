class String
	def to_real_item
		fields = self.chomp # "car:100:50"
		fields = fields.split(":") # ["car", "100", "50"]
		RealItem.new(name: i[0].to_i, price: i[1].to_i, weight: i[2].to_i)
	end
end
