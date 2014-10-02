class Textbook

	def initialize(file_as_storage) 
	 @file_as_storage = file_as_storage 
	end

	def to_s
		File.read(Tempfile.new(@file_as_storage))
	end

	def insert(page)
		File.open(Tempfile.new(@file_as_storage),'w') do |s|
		s << page 
		end
	end
end

