# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Weapon.create(name: "sting", weapon_type: "sword", slug: "sting", slain: 4)
Weapon.create(name: "aragorn", weapon_type: "sword", slug: "aragorn", slain: 100)
Weapon.create(name: "gimle", weapon_type: "axe", slug: "gimle", slain: 90)
Weapon.create(name: "legolas", weapon_type: "bow", slug: "legolas", slain: 4)

