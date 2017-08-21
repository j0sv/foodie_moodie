RSpec.describe Restaurant, type: :model do
  it { is_expected.to have_db_column :id }
  it { is_expected.to have_db_column :name }
  it { is_expected.to have_db_column :address1 }
  it { is_expected.to have_db_column :address2 }
  it { is_expected.to have_db_column :city }
  it { is_expected.to have_db_column :postal_code }
  it { is_expected.to have_db_column :country }
  it { is_expected.to have_db_column :phone_number }
  it { is_expected.to have_db_column :email }
  it { is_expected.to have_db_column :longitude }
  it { is_expected.to have_db_column :latitude }
  it { is_expected.to have_db_column :cuisine }
  it { is_expected.to have_db_column :created_at }
  it { is_expected.to have_db_column :updated_at }
end
