RSpec.describe League, :type => :model do
# subject is implicitly defined (XYZ.new)

	describe 'ActiveRecord associations' do
		it 'has many clubs' do
			expect(subject).to have_many(:clubs)
		end
	end
end