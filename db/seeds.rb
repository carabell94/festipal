# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

glastonbury = Festival.create(name: 'Glastonbury', start_date: '28/08/2020', end_date: '30/08/2020')

boomtown = Festival.create(name: 'Boomtown', start_date: '04/09/2020', end_date: '06/09/2020')

wilderness = Festival.create(name: 'Wilderness', start_date: '11/09/2020', end_date: '13/09/2020')
