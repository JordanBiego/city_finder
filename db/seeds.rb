puts 'Seeding...'

State.create(name: 'Santa Catarina', acronym: 'SC')
State.create(name: 'Parana', acronym: 'PR')
State.create(name: 'Rio Grande do Sul', acronym: 'RS')

City.create(name: 'Florianopolis', state_id: 1)
City.create(name: 'São José', state_id: 1)
City.create(name: 'Lages', state_id: 1)

City.create(name: 'Curitiba', state_id: 2)
City.create(name: 'Londrina', state_id: 2)
City.create(name: 'Tolêdo', state_id: 2)

City.create(name: 'Pelotas', state_id: 3)
City.create(name: 'Porto Alegre', state_id: 3)
City.create(name: 'Santa Maria', state_id: 3)

puts 'Seeding complete!'
