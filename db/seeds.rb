require 'faker'

glastonbury = Festival.create(name: 'Glastonbury Festival', start_date: '28/08/2020', end_date: '30/08/2020')

boomtown = Festival.create(name: 'Boomtown Fair', start_date: '04/09/2020', end_date: '06/09/2020')

wilderness = Festival.create(name: 'Wilderness Festival', start_date: '11/09/2020', end_date: '13/09/2020')

eminem = Schedule.create(festival_id: 1, day: '28/08/2020', start_time: '2020-08-28T15:00:00-0000', end_time: '2020-08-28T16:00:00-0000', artist: 'Eminem', stage: 'Pyramid Stage', genre: 'Hip Hop')
eltonjohn = Schedule.create(festival_id: 1, day: '28/08/2020', start_time: '2020-08-28T16:00:00-0000', end_time: '2020-08-28T17:00:00-0000', artist: 'Elton John', stage: 'Pyramid Stage', genre: 'Pop')


