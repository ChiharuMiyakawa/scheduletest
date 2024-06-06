class Post < ApplicationRecord
    validates :title, presence: true ,length: { maximum: 20 } 
    validates :start_date, presence: true   
    validates :end_date, presence: true   
    validates :memo, length: { maximum: 500 } 
    validate :end_date_cannot_be_in_the_past

    def end_date_cannot_be_in_the_past
        if end_date.present? &&  end_date < start_date
            errors.add(:end_date, "は、開始日以降の日付としてください")
        end
    end
end
