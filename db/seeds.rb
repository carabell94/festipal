require 'faker'

glas_stage = ['Pyramid Stage', 'The Park', 'Acoustic Stage', 'Arcadia']
boom_stage = ["Lio's Den", "Town Center", "Nucleus Stage", "RELIC"]
wild_stage = ['Main Stage', 'The Level', 'The Jumpyard', 'The Valley']
all = [glas_stage, boom_stage, wild_stage]

glastonbury = Festival.create(name: 'Glastonbury', start_date: '28/08/2020', end_date: '30/08/2020')

boomtown = Festival.create(name: 'Boomtown', start_date: '04/09/2020', end_date: '06/09/2020')

wilderness = Festival.create(name: 'Wilderness', start_date: '11/09/2020', end_date: '13/09/2020')

day = %w(Friday Saturday Sunday)
hours = [12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23]

# Allocating stages
id = 1
all.each do|festival|
  festival.each do |stage|
    Stage.create(name: stage, festival_id: id)
  end
  id +=1
end

[glastonbury, boomtown, wilderness].each do |festival|
  festival.stages.each do |stage|
    day.each do |d|
      hours.each do |h|
        schedule = Schedule.new(stage: stage, day: d, start_time: h, end_time: h + 1, artist: Faker::Music.band, genre: Faker::Music.genre)
        schedule.save!
        p schedule
      end
    end
  end
end







