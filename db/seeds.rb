puts "Wiping the database"
Ticket.destroy_all
Event.destroy_all


puts "Creating some events!"

Event.create(name: 'Tomorrowland', date: '2020-07-18', time: '17:00')
Event.create(name: 'Sziget Festival', date: '2020-08-05', time: '13:00')
Event.create(name: 'Earth Garden', date: '2020-05-30', time: '16:00')
Event.create(name: 'Exit Festival', date: '2020-07-25', time: '17:00')
Event.create(name: 'NOS Primavera Sound', date: '2020-08-20', time: '13:00')

puts "5 events created :)"
puts "Adding tickets to these events"

Ticket.create(quantity: 5000,
              price: 300,
              currency: 'Euro',
              event_id: Event.where(name: 'Tomorrowland').ids.first)

Ticket.create(quantity: 7000,
              price: 200,
              currency: 'Euro',
              event_id: Event.where(name: 'Sziget Festival').ids.first)

Ticket.create(quantity: 1400,
              price: 150,
              currency: 'Euro',
              event_id: Event.where(name: 'Earth Garden').ids.first)

Ticket.create(quantity: 2000,
              price: 120,
              currency: 'Euro',
              event_id: Event.where(name: 'Exit Festival').ids.first)

Ticket.create(quantity: 2500,
              price: 100,
              currency: 'Euro',
              event_id: Event.where(name: 'NOS Primavera Sound').ids.first)
