# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

real_states = RealState.create!([
  { name: 'Place1', real_state_type: 'house', street: 'street1', external_number: 'number1', internal_number: 'i1', neighborhood: 'neighborhood1', city: 'city1', country: 'ES', rooms: 0, bathrooms: 1.0, comments: '' },
  { name: 'Place2', real_state_type: 'house', street: 'street1', external_number: 'number1', internal_number: 'i1', neighborhood: 'neighborhood1', city: 'city1', country: 'ES', rooms: 0, bathrooms: 1.0, comments: '' },
  { name: 'Place3', real_state_type: 'house', street: 'street1', external_number: 'number1', internal_number: 'i1', neighborhood: 'neighborhood1', city: 'city1', country: 'ES', rooms: 0, bathrooms: 1.0, comments: '' },
  { name: 'Place4', real_state_type: 'house', street: 'street1', external_number: 'number1', internal_number: 'i1', neighborhood: 'neighborhood1', city: 'city1', country: 'ES', rooms: 0, bathrooms: 1.0, comments: '' },
  { name: 'Place5', real_state_type: 'house', street: 'street1', external_number: 'number1', internal_number: 'i1', neighborhood: 'neighborhood1', city: 'city1', country: 'ES', rooms: 0, bathrooms: 1.0, comments: '' },
  { name: 'Place6', real_state_type: 'house', street: 'street1', external_number: 'number1', internal_number: 'i1', neighborhood: 'neighborhood1', city: 'city1', country: 'ES', rooms: 0, bathrooms: 1.0, comments: '' },
  { name: 'Place7', real_state_type: 'house', street: 'street1', external_number: 'number1', internal_number: 'i1', neighborhood: 'neighborhood1', city: 'city1', country: 'ES', rooms: 0, bathrooms: 1.0, comments: '' },
  { name: 'Place8', real_state_type: 'house', street: 'street1', external_number: 'number1', internal_number: 'i1', neighborhood: 'neighborhood1', city: 'city1', country: 'ES', rooms: 0, bathrooms: 1.0, comments: '' },
  { name: 'Place9', real_state_type: 'house', street: 'street1', external_number: 'number1', internal_number: 'i1', neighborhood: 'neighborhood1', city: 'city1', country: 'ES', rooms: 0, bathrooms: 1.0, comments: '' },
  { name: 'Place10', real_state_type: 'house', street: 'street1', external_number: 'number1', internal_number: 'i1', neighborhood: 'neighborhood1', city: 'city1', country: 'ES', rooms: 0, bathrooms: 1.0, comments: '' },
  { name: 'Place11', real_state_type: 'house', street: 'street1', external_number: 'number1', internal_number: 'i1', neighborhood: 'neighborhood1', city: 'city1', country: 'ES', rooms: 0, bathrooms: 1.0, comments: '' },
  { name: 'Place12', real_state_type: 'house', street: 'street1', external_number: 'number1', internal_number: 'i1', neighborhood: 'neighborhood1', city: 'city1', country: 'ES', rooms: 0, bathrooms: 1.0, comments: '' },
  { name: 'Place13', real_state_type: 'house', street: 'street1', external_number: 'number1', internal_number: 'i1', neighborhood: 'neighborhood1', city: 'city1', country: 'ES', rooms: 0, bathrooms: 1.0, comments: '' },
  { name: 'Place14', real_state_type: 'house', street: 'street1', external_number: 'number1', internal_number: 'i1', neighborhood: 'neighborhood1', city: 'city1', country: 'ES', rooms: 0, bathrooms: 1.0, comments: '' },
  { name: 'Place15', real_state_type: 'house', street: 'street1', external_number: 'number1', internal_number: 'i1', neighborhood: 'neighborhood1', city: 'city1', country: 'ES', rooms: 0, bathrooms: 1.0, comments: '' },
  { name: 'Place16', real_state_type: 'house', street: 'street1', external_number: 'number1', internal_number: 'i1', neighborhood: 'neighborhood1', city: 'city1', country: 'ES', rooms: 0, bathrooms: 1.0, comments: '' },
  { name: 'Place17', real_state_type: 'house', street: 'street1', external_number: 'number1', internal_number: 'i1', neighborhood: 'neighborhood1', city: 'city1', country: 'ES', rooms: 0, bathrooms: 1.0, comments: '' },
  { name: 'Place18', real_state_type: 'house', street: 'street1', external_number: 'number1', internal_number: 'i1', neighborhood: 'neighborhood1', city: 'city1', country: 'ES', rooms: 0, bathrooms: 1.0, comments: '' },
  { name: 'Place19', real_state_type: 'house', street: 'street1', external_number: 'number1', internal_number: 'i1', neighborhood: 'neighborhood1', city: 'city1', country: 'ES', rooms: 0, bathrooms: 1.0, comments: '' },
  { name: 'Place20', real_state_type: 'house', street: 'street1', external_number: 'number1', internal_number: 'i1', neighborhood: 'neighborhood1', city: 'city1', country: 'ES', rooms: 0, bathrooms: 1.0, comments: '' }
]) if RealState.count == 0
