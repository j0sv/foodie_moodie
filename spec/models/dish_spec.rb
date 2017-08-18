require 'rails_helper'

RSpec.describe Dish, type: :model do
  it { is_expected.to have_db_column :id }
  it { is_expected.to have_db_column :title }
  it { is_expected.to have_db_column :description }
  it { is_expected.to have_db_column :price }

  it { is_expected.to belong_to :restaurant}
end
