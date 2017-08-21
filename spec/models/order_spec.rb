RSpec.describe Order, type: :model do
  it { is_expected.to have_db_column :created_at }
  it { is_expected.to have_db_column :updated_at }

  it 'has 0 tax' do
    expect(subject.tax_pct).to eq 0
  end
end
