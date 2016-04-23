FactoryGirl.define do
  factory :event do
    name         { FFaker::Conference.name }
    organization
    box_office
    start_time   { 1.day.from_now }
    end_time     { 3.days.from_now }
    description  { FFaker::DizzleIpsum.paragraph }
    state        :new

    trait :published do
      state :published
    end

    trait :live do
      state      :live
      start_time { 1.day.ago }
      end_time   { 1.day.from_now }
    end

    trait :ended do
      state      :ended
      start_time { 1.week.ago }
      end_time   { 1.day.ago }
    end

    trait :canceled do
      state :canceled
    end
  end
end
