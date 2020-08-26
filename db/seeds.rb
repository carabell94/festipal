require 'faker'

glastonbury = Festival.create(name: 'Glastonbury', start_date: '28/08/2020', end_date: '30/08/2020')

boomtown = Festival.create(name: 'Boomtown', start_date: '04/09/2020', end_date: '06/09/2020')

wilderness = Festival.create(name: 'Wilderness', start_date: '11/09/2020', end_date: '13/09/2020')

glastonbury_festival = 0
boomtown_festival = 0
wilderness_festival = 0
432.times do
  if glastonbury_festival < 144
    Schedule.create(festival_id: 1)
    glastonbury_festival += 1
  elsif boomtown_festival < 144
    Schedule.create(festival_id: 2)
    boomtown_festival += 1
  elsif wilderness_festival < 144
    Schedule.create(festival_id: 3)
    wilderness_festival += 1
  end
end

friday = 0
saturday = 0
sunday = 0
id = 1
start_time = 12

# Glastonbury
144.times do
  if friday < 48
    if start_time < 23
      schedule = Schedule.find(id)
      schedule.update(day: 'Friday', start_time: start_time, end_time: start_time + 1, artist: Faker::Music.band, genre: Faker::Music.genre)
      schedule.save!
      friday +=1
      id +=1
      start_time += 1
    else
      schedule = Schedule.find(id)
      schedule.update(day: 'Friday', start_time: start_time, end_time: start_time + 1, artist: Faker::Music.band, genre: Faker::Music.genre)
      schedule.save!
      friday +=1
      id +=1
      start_time = 12
    end
  elsif saturday < 48
    if start_time < 23
      schedule = Schedule.find(id)
      schedule.update(day: 'Saturday', start_time: start_time, end_time: start_time + 1, artist: Faker::Music.band, genre: Faker::Music.genre)
      schedule.save!
      saturday +=1
      id +=1
      start_time += 1
    else
      schedule = Schedule.find(id)
      schedule.update(day: 'Saturday', start_time: start_time, end_time: start_time + 1, artist: Faker::Music.band, genre: Faker::Music.genre)
      schedule.save!
      saturday +=1
      id +=1
      start_time = 12
    end
  elsif sunday < 48
    if start_time < 23
      schedule = Schedule.find(id)
      schedule.update(day: 'Sunday', start_time: start_time, end_time: start_time + 1, artist: Faker::Music.band, genre: Faker::Music.genre)
      schedule.save!
      sunday +=1
      id +=1
      start_time += 1
    else
      schedule = Schedule.find(id)
      schedule.update(day: 'Sunday', start_time: start_time, end_time: start_time + 1, artist: Faker::Music.band, genre: Faker::Music.genre)
      schedule.save!
      sunday +=1
      id +=1
      start_time = 12
    end
  end
end

#Boomtown
friday = 0
saturday = 0
sunday = 0
start_time = 12

144.times do
  if friday < 48
    if start_time < 23
      schedule = Schedule.find(id)
      schedule.update(day: 'Friday', start_time: start_time, end_time: start_time + 1, artist: Faker::Music.band, genre: Faker::Music.genre)
      schedule.save!
      friday +=1
      id +=1
      start_time += 1
    else
      schedule = Schedule.find(id)
      schedule.update(day: 'Friday', start_time: start_time, end_time: start_time + 1, artist: Faker::Music.band, genre: Faker::Music.genre)
      schedule.save!
      friday +=1
      id +=1
      start_time = 12
    end
  elsif saturday < 48
    if start_time < 23
      schedule = Schedule.find(id)
      schedule.update(day: 'Saturday', start_time: start_time, end_time: start_time + 1, artist: Faker::Music.band, genre: Faker::Music.genre)
      schedule.save!
      saturday +=1
      id +=1
      start_time += 1
    else
      schedule = Schedule.find(id)
      schedule.update(day: 'Saturday', start_time: start_time, end_time: start_time + 1, artist: Faker::Music.band, genre: Faker::Music.genre)
      schedule.save!
      saturday +=1
      id +=1
      start_time = 12
    end
  elsif sunday < 48
    if start_time < 23
      schedule = Schedule.find(id)
      schedule.update(day: 'Sunday', start_time: start_time, end_time: start_time + 1, artist: Faker::Music.band, genre: Faker::Music.genre)
      schedule.save!
      sunday +=1
      id +=1
      start_time += 1
    else
      schedule = Schedule.find(id)
      schedule.update(day: 'Sunday', start_time: start_time, end_time: start_time + 1, artist: Faker::Music.band, genre: Faker::Music.genre)
      schedule.save!
      sunday +=1
      id +=1
      start_time = 12
    end
  end
end

# Wilderness
friday = 0
saturday = 0
sunday = 0
start_time = 12

144.times do
  if friday < 48
    if start_time < 23
      schedule = Schedule.find(id)
      schedule.update(day: 'Friday', start_time: start_time, end_time: start_time + 1, artist: Faker::Music.band, genre: Faker::Music.genre)
      schedule.save!
      friday +=1
      id +=1
      start_time += 1
    else
      schedule = Schedule.find(id)
      schedule.update(day: 'Friday', start_time: start_time, end_time: start_time + 1, artist: Faker::Music.band, genre: Faker::Music.genre)
      schedule.save!
      friday +=1
      id +=1
      start_time = 12
    end
  elsif saturday < 48
    if start_time < 23
      schedule = Schedule.find(id)
      schedule.update(day: 'Saturday', start_time: start_time, end_time: start_time + 1, artist: Faker::Music.band, genre: Faker::Music.genre)
      schedule.save!
      saturday +=1
      id +=1
      start_time += 1
    else
      schedule = Schedule.find(id)
      schedule.update(day: 'Saturday', start_time: start_time, end_time: start_time + 1, artist: Faker::Music.band, genre: Faker::Music.genre)
      schedule.save!
      saturday +=1
      id +=1
      start_time = 12
    end
  elsif sunday < 48
    if start_time < 23
      schedule = Schedule.find(id)
      schedule.update(day: 'Sunday', start_time: start_time, end_time: start_time + 1, artist: Faker::Music.band, genre: Faker::Music.genre)
      schedule.save!
      sunday +=1
      id +=1
      start_time += 1
    else
      schedule = Schedule.find(id)
      schedule.update(day: 'Sunday', start_time: start_time, end_time: start_time + 1, artist: Faker::Music.band, genre: Faker::Music.genre)
      schedule.save!
      sunday +=1
      id +=1
      start_time = 12
    end
  end
end


id = 1

pyramid = 0
park = 0
acoustic = 0
arcadia = 0

# Glastonbury
48.times do
  # Pyramid Friday
  if pyramid < 12
    schedule = Schedule.find(id)
    schedule.update(stage: 'Pyramid Stage')
    schedule.save!
    pyramid += 1
    id += 1
    # Park Friday
  elsif park < 12
    schedule = Schedule.find(id)
    schedule.update(stage: 'The Park')
    schedule.save!
    park += 1
    id += 1
    # Acoustic Friday
  elsif acoustic < 12
    schedule = Schedule.find(id)
    schedule.update(stage: 'Acoustic Stage')
    schedule.save!
    acoustic += 1
    id += 1
  # Arcadia Friday
  elsif arcadia < 12
    schedule = Schedule.find(id)
    schedule.update(stage: 'Arcadia')
    schedule.save!
    arcadia += 1
    id += 1
  end
end

pyramid = 0
park = 0
acoustic = 0
arcadia = 0

48.times do
  # Pyramid Saturday
  if pyramid < 12
    schedule = Schedule.find(id)
    schedule.update(stage: 'Pyramid Stage')
    schedule.save!
    pyramid += 1
    id += 1
    # Park Saturday
  elsif park < 12
    schedule = Schedule.find(id)
    schedule.update(stage: 'The Park')
    schedule.save!
    park += 1
    id += 1
    # Acoustic Saturday
  elsif acoustic < 12
    schedule = Schedule.find(id)
    schedule.update(stage: 'Acoustic Stage')
    schedule.save!
    acoustic += 1
    id += 1
  # Arcadia Saturday
  elsif arcadia < 12
    schedule = Schedule.find(id)
    schedule.update(stage: 'Arcadia')
    schedule.save!
    arcadia += 1
    id += 1
  end
end

pyramid = 0
park = 0
acoustic = 0
arcadia = 0

48.times do
  # Pyramid Sunday
  if pyramid < 12
    schedule = Schedule.find(id)
    schedule.update(stage: 'Pyramid Stage')
    schedule.save!
    pyramid += 1
    id += 1
    # Park Sunday
  elsif park < 12
    schedule = Schedule.find(id)
    schedule.update(stage: 'The Park')
    schedule.save!
    park += 1
    id += 1
    # Acoustic Sunday
  elsif acoustic < 12
    schedule = Schedule.find(id)
    schedule.update(stage: 'Acoustic Stage')
    schedule.save!
    acoustic += 1
    id += 1
  # Arcadia Sunday
  elsif arcadia < 12
    schedule = Schedule.find(id)
    schedule.update(stage: 'Arcadia')
    schedule.save!
    arcadia += 1
    id += 1
  end
end

pyramid = 0
park = 0
acoustic = 0
arcadia = 0

# Boomtown
48.times do
  # Pyramid Friday
  if pyramid < 12
    schedule = Schedule.find(id)
    schedule.update(stage: "Lion's Den")
    schedule.save!
    pyramid += 1
    id += 1
    # Park Friday
  elsif park < 12
    schedule = Schedule.find(id)
    schedule.update(stage: 'Town Center')
    schedule.save!
    park += 1
    id += 1
    # Acoustic Friday
  elsif acoustic < 12
    schedule = Schedule.find(id)
    schedule.update(stage: 'Nucleus Stage')
    schedule.save!
    acoustic += 1
    id += 1
  # Arcadia Friday
  elsif arcadia < 12
    schedule = Schedule.find(id)
    schedule.update(stage: 'RELIC')
    schedule.save!
    arcadia += 1
    id += 1
  end
end

pyramid = 0
park = 0
acoustic = 0
arcadia = 0

48.times do
  # Pyramid Saturday
  if pyramid < 12
    schedule = Schedule.find(id)
    schedule.update(stage: "Lion's Den")
    schedule.save!
    pyramid += 1
    id += 1
    # Park Saturday
  elsif park < 12
    schedule = Schedule.find(id)
    schedule.update(stage: 'Town Center')
    schedule.save!
    park += 1
    id += 1
    # Acoustic Saturday
  elsif acoustic < 12
    schedule = Schedule.find(id)
    schedule.update(stage: 'Nucleus Stage')
    schedule.save!
    acoustic += 1
    id += 1
  # Arcadia Saturday
  elsif arcadia < 12
    schedule = Schedule.find(id)
    schedule.update(stage: 'RELIC')
    schedule.save!
    arcadia += 1
    id += 1
  end
end

pyramid = 0
park = 0
acoustic = 0
arcadia = 0

48.times do
  # Pyramid Sunday
  if pyramid < 12
    schedule = Schedule.find(id)
    schedule.update(stage: "Lion's Den")
    schedule.save!
    pyramid += 1
    id += 1
    # Park Sunday
  elsif park < 12
    schedule = Schedule.find(id)
    schedule.update(stage: 'Town Center')
    schedule.save!
    park += 1
    id += 1
    # Acoustic Sunday
  elsif acoustic < 12
    schedule = Schedule.find(id)
    schedule.update(stage: 'Nucleus Stage')
    schedule.save!
    acoustic += 1
    id += 1
  # Arcadia Sunday
  elsif arcadia < 12
    schedule = Schedule.find(id)
    schedule.update(stage: 'RELIC')
    schedule.save!
    arcadia += 1
    id += 1
  end
end

pyramid = 0
park = 0
acoustic = 0
arcadia = 0

# Wilderness
48.times do
  # Pyramid Friday
  if pyramid < 12
    schedule = Schedule.find(id)
    schedule.update(stage: "Main Stage")
    schedule.save!
    pyramid += 1
    id += 1
    # Park Friday
  elsif park < 12
    schedule = Schedule.find(id)
    schedule.update(stage: 'The Level')
    schedule.save!
    park += 1
    id += 1
    # Acoustic Friday
  elsif acoustic < 12
    schedule = Schedule.find(id)
    schedule.update(stage: 'The Jumpyard')
    schedule.save!
    acoustic += 1
    id += 1
  # Arcadia Friday
  elsif arcadia < 12
    schedule = Schedule.find(id)
    schedule.update(stage: 'The Valley')
    schedule.save!
    arcadia += 1
    id += 1
  end
end

pyramid = 0
park = 0
acoustic = 0
arcadia = 0

48.times do
  # Pyramid Saturday
  if pyramid < 12
    schedule = Schedule.find(id)
    schedule.update(stage: "Main Stage")
    schedule.save!
    pyramid += 1
    id += 1
    # Park Saturday
  elsif park < 12
    schedule = Schedule.find(id)
    schedule.update(stage: 'The Level')
    schedule.save!
    park += 1
    id += 1
    # Acoustic Saturday
  elsif acoustic < 12
    schedule = Schedule.find(id)
    schedule.update(stage: 'The Jumpyard')
    schedule.save!
    acoustic += 1
    id += 1
  # Arcadia Saturday
  elsif arcadia < 12
    schedule = Schedule.find(id)
    schedule.update(stage: 'The Valley')
    schedule.save!
    arcadia += 1
    id += 1
  end
end

pyramid = 0
park = 0
acoustic = 0
arcadia = 0

48.times do
  # Pyramid Sunday
  if pyramid < 12
    schedule = Schedule.find(id)
    schedule.update(stage: "Main Stage")
    schedule.save!
    pyramid += 1
    id += 1
    # Park Sunday
  elsif park < 12
    schedule = Schedule.find(id)
    schedule.update(stage: 'The Level')
    schedule.save!
    park += 1
    id += 1
    # Acoustic Sunday
  elsif acoustic < 12
    schedule = Schedule.find(id)
    schedule.update(stage: 'The Jumpyard')
    schedule.save!
    acoustic += 1
    id += 1
  # Arcadia Sunday
  elsif arcadia < 12
    schedule = Schedule.find(id)
    schedule.update(stage: 'The Valley')
    schedule.save!
    arcadia += 1
    id += 1
  end
end






