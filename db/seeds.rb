# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

IdType.create(name: 'utility_acct_id', length: 40)
IdType.create(name: 'premise_id', length: 40)
IdType.create(name: 'customer_id', length: 40)
IdType.create(name: 'service_point_id', length: 24)

Identifier.create(real_id: 'my_fake_id', generated_id: 'my_generated_id', id_type: IdType.find_or_create_by_name('customer_id'))