require 'rails_helper'
require "simple_calendar/calendar"
require "simple_calendar/month_calendar"

RSpec.describe simple_calendar do
  before do
    @event = FactoryBot.build(:event)
  end
  describe 'eventの登録' do
    context 'eventが登録できるとき' do
      it 'name,remarks,image,start_timeが存在すれば登録できる' do
        expect(@event).to be_valid
      end
    end
  end
end
