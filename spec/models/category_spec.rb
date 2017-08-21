RSpec.describe Category, type: :model do
  it { is_expected.to belong_to :restaurant}
end