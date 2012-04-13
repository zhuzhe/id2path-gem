module Id2path

	def create_path root
		dir1, dir2, file = self.id.to_s.rjust(9, '0').scan(/\d{3}/)
		Dir.mkdir(File.join(root, dir1)) unless File.directory?(File.join(root, dir1))
		Dir.mkdir(File.join(root, dir1, dir2)) unless File.directory?(File.join(root, dir1, dir2))
		File.join(root, dir1, dir2, file)
	end


end