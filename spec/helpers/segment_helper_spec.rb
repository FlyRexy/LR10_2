# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ServerHelper do
  describe 'check result function' do
    it 'good' do
      expect(ServerHelper.solve('1 4 9 5 1')).to eq([['1 4 9', '1'], 0])
    end
    it 'invalid value' do
      expect(ServerHelper.solve('sad')).to eq([["0"], 0])
    end
  end
end
