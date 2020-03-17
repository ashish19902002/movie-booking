# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')


theater1 = Theater.create(name: "PVR", location: "Rohini")
theater2 = Theater.create(name: "PVR", location: "Pitampura")
theater3 = Theater.create(name: "PVR", location: "Gurgaon")


t1a1 = Auditorium.create(name: "Audi 1", seat_count: 100, theater_id: theater1.id)
t1a2 = Auditorium.create(name: "Audi 2", seat_count: 150, theater_id: theater1.id)

t2a1 = Auditorium.create(name: "Audi 1", seat_count: 100, theater_id: theater2.id)
t2a2 = Auditorium.create(name: "Audi 2", seat_count: 100, theater_id: theater2.id)

t3a1 = Auditorium.create(name: "Audi 1", seat_count: 100, theater_id: theater3.id)
t3a2 = Auditorium.create(name: "Audi 2", seat_count: 100, theater_id: theater3.id)


movie1 = Movie.create(title: "English Medium", cast: "Irfan Khan", description: "lorema ipsum", duration: 120)
movie2 = Movie.create(title: "Suryavanshi", cast: "Akshay Kumar", description: "lorema ipsum", duration: 130)


Screen.create(movie_id: movie1.id, auditorium_id: t1a1.id, start_time: Time.now)
Screen.create(movie_id: movie1.id, auditorium_id: t1a1.id, start_time: Time.now-3.hours)
Screen.create(movie_id: movie1.id, auditorium_id: t1a1.id, start_time: Time.now-6.hours)
Screen.create(movie_id: movie1.id, auditorium_id: t1a1.id, start_time: Time.now-9.hours)

Screen.create(movie_id: movie2.id, auditorium_id: t1a2.id, start_time: Time.now)
Screen.create(movie_id: movie2.id, auditorium_id: t1a2.id, start_time: Time.now-3.hours)
Screen.create(movie_id: movie2.id, auditorium_id: t1a2.id, start_time: Time.now-6.hours)


Category(id: integer, name: string, created_at: datetime, updated_at: datetime)

# Screen.create(movie_id: movie2.id, auditorium_id: t2a1.id, start_time: Time.now)
# Screen.create(movie_id: movie2.id, auditorium_id: t2a1.id, start_time: Time.now-3.hours)

# Screen.create(movie_id: movie1.id, auditorium_id: t2a1.id, start_time: Tim.now)
# Screen.create(movie_id: movie1.id, auditorium_id: t2a1.id, start_time: Tim.now)



# Screen.create(movie_id: movie1.id, auditorium_id: t1a1.id, start_time: Tim.now)
# Screen.create(movie_id: movie1.id, auditorium_id: t1a1.id, start_time: Tim.now)
