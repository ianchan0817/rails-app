module Boyfriendable
	def self.include base
		base.send :include, InstanceMethods
		base.send :extend, ClassMethods
	end

	module InstanceMethods
		def instance_method
			puts "instance_method"
		end
	end


	module ClassMethods
		def class_method
			puts "class_method"
		end
	end

	def give_flowers
		puts "give flowers"
	end
end