class Event < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  
  with_options presence: true do
    validates :name
    validates :remarks
    validates :start_time, uniqueness: { message: 'は他のユーザーが予約しています' }
  end

  validate :date_before_start
  validate :start_time_not_sunday
  validate :start_time_not_saturday
  
  def date_before_start
    errors.add(:start_time, "は過去の日付を選択出来ません") if start_time < Date.today
  end

  def start_time_not_sunday
    errors.add(:start_time, "は日曜日を選択出来ません") if start_time.sunday?
  end

  def start_time_not_saturday
    errors.add(:start_time, "は土曜日を選択出来ません") if start_time.saturday?
  end
  
  
end