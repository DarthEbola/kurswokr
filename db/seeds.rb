if (u1 = User.find_by_email('admin@localhost')).nil?
  u1 = User.create!(password: 'qwerty', password_confirmation: 'qwerty',
    email: 'admin@localhost')
  u1.activate!
end
if (u2 = User.find_by_email('user@localhost')).nil?
  u2 = User.create!(password: 'qwerty', password_confirmation: 'qwerty',
    email: 'user@localhost')
  u2.activate!
end
r1, r2 = Role.create_main_roles
ru1 = RoleUser.create(role: r1, user: u1)
ru2 = RoleUser.create(role: r2, user: u2)

# Заполнение базы для туров
Tour.delete_all; Troute.delete_all; Excursion.delete_all; City.delete_all
n = 10
# Города
n.times{|i| City.create(name: "name" + i.to_s)}
for i in 0 ... n do
  # Экскурсии
  e = Excursion.new(price: (rand * 10_000_000).to_i/100.0,
    describe: "some info", name: "name" + i.to_s)
  e.city = City.all[(0...n).to_a.shuffle[0]]
  e.save
  # Маршруты
  e = Troute.new(price: (rand * 10_000_000).to_i/100.0,
    describe: "some info", name: "name" + i.to_s)
  e.city = City.all[(0...n).to_a.shuffle[0]]
  e.save
end
# Туры
for i in 0 ... n do
  e = Tour.new(add_pay: (rand * 10_000_000).to_i/100.0,
    describe: "some info", tour_days: (rand * 100).to_i,
    departure_date: DateTime.now + (rand * 10).to_i.days)
  e.troute = Troute.all[(0...n).to_a.shuffle[0]]
  e.save
end
