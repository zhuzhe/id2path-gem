module Id2path

	def create_path root
		dir1, dir2, file = self.id.to_s.rjust(9, '0').scan(/\d{3}/)
		Dir.mkdir(root.join(dir1)) unless File.directory?(root.join(dir1))
		Dir.mkdir(root.join(dir1, dir2)) unless File.directory?(root.join(dir1, dir2))
		File.join(root, dir1, dir2, file)
	end

end