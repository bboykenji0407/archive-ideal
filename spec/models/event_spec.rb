require 'rails_helper'
require "simple_calendar/calendar"
require "simple_calendar/month_calendar"

RSpec.describe Event, type: :model do
  before do
    user = FactoryBot.create(:user)
    @event = FactoryBot.build(:event, user_id: user.id)
  end
  describe 'eventの登録' do
    context 'eventが登録できるとき' do
      it 'user_id,name,remarks,image,start_timeが存在すれば登録できる' do
        expect(@event).to be_valid
      end
    end
  end
end
