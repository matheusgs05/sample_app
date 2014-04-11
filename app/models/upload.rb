class Upload < ActiveRecord::Base
	belongs_to :binary, :dependent => :destroy


    before_create :create_me
	attr_accessor :file_data
	def create_me
		input = self.file_data
		@binary = Binary.create(:file_data => input)
		self.binary_id = @binary.id 
		self.file_name = input.original_filename
		self.content_type = input.content_type.chomp
		self.size = @binary.data.size
	 end
end
