# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Status.create([
    { description: 'Return initiated' },
    { description: 'Change requested ' },
    { description: 'Change initiated ' },
    { description: 'Change authorised ' },
    { description: 'Return autorised' },
    { description: 'Return requested' }

])
puts "💾 Statutes loaded!"
# Save data for Category
Category.create([
    { name: 'audio' },
    { name: 'food' },
    { name: 'furniture' },
    { name: 'garden' },
    { name: 'pharma' },
    { name: 'telephones' }
])
puts "💾 Categories loaded!"

Role.create([
    { name: 'Returns manager' },
    { name: 'Admin' },
    { name: 'Supervisor' },
    { name: 'Customer' },
    { name: 'Supplier' },
    { name: '3PL Partner' }
])
puts "💾 Roles loaded!"

User.create([
    { username: 'admin', password: 'admin', password_confirmation: 'admin', role: Role.find_by(name: 'Admin') }
])
puts "💾 Users loaded!"