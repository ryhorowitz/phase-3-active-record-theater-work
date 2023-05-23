puts "seeding"

Role.create(name: "Part guy")
Role.create(name: "Part lady")

Audition.create(actor: "jim", location: "NYC", phone: 123, hired: true, role_id: 1)
Audition.create(actor: "ted", location: "Philly", phone: 234, hired: false, role_id: 1)
Audition.create(actor: "kim", location: "NJ", phone: 345, hired: true, role_id: 2)
Audition.create(actor: "amy", location: "Delaware", phone: 456, hired: false, role_id: 2)

puts "seed complete"
