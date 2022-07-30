class ProgramingLanguage
	attr_reader :name

	def initialize(name = 'Ruby')
		@name = name
	end
end

RSpec.describe ProgramingLanguage do
	let(:language) { ProgramingLanguage.new('Python') }

	it "should store the name of the language" do
		expect(language.name).to eq('Python')
	end
	
	context "with no argument" do
		let(:language) { ProgramingLanguage.new }

		it "should default to Ruby as the name" do
			expect(language.name).to eq('Python')
		end
	end
	
end
