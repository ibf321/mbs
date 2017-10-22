# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Unit.create name: "Sesc_Juazeiro", uf: "CE"
User.create name: 'Ismael Barbosa', username: 'ismael', status: :active, kind: :admin, unit_id: 1, email: 'ismael@teste.com', password: 123456
User.create name: 'Alice Barbosa',  username: 'alice', status: :active, kind: :supervision, unit_id: 1, email: 'alice@teste.com', password: 123456
User.create name: 'Sayonara Sobreira', username: 'sayonara', status: :active, kind: :unit_manager, unit_id: 1, email: 'sayonara@teste.com', password: 123456
User.create name: 'Samia Sobreira', username: 'samia', status: :active, kind: :program_manager, unit_id: 1, email: 'samia@teste.com', password: 123456
User.create name: 'Saulo Sobreira', username: 'saulo', status: :active, kind: :technicianm, unit_id: 1, email: 'saulo@teste.com', password: 123456
