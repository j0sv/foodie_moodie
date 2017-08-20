require 'spec_helper'

RSpec.describe ApplicationHelper do
  describe '#get_order_items_count' do
    it 'returns true' do
      helper.get_order_items_count == 0
    end
  end
end
