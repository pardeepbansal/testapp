class Question < ActiveRecord::Base
	validates :title ,:a,:b,:c,:d,:answer , presence: true


	def self.import(file)
		CSV.foreach(file.path,headers: true) do |row|
			Question.create! row.to_hash
		end
	end
end
