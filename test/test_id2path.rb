require 'helper'

class TestId2path < Test::Unit::TestCase

	context 'a object with a id attribute' do
		setup do
			C = Class.new {
				include Id2path

				def id
					@id = '123456'
				end
			}
			@object_with_id = C.new
		end

		should "create dir and file for id" do
			path =  @object_with_id.create_path(File.expand_path('~'))
			assert_equal File.expand_path(path, '~'), path
		end
	end
  	
end
