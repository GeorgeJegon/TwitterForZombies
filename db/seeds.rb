# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

baseImage = "http://placehold.it/150x150"
basePassword = 123456

User.delete_all
Order.delete_all
Banner.delete_all
Zombie.delete_all
Product.delete_all
Category.delete_all
ProductImage.delete_all

Zombie.create([
  {name: "George", age: 21, email: "george@zombie.com", password: "123456", status: true, image: baseImage},
  {name: "Arthur", age: 43, email: "arthur@zombie.com", password: "123456abcd", status: true, image: baseImage},
  {name: "Enrique", age: 15, email: "enrique@zombie.com", password: "12dsad3456", status: true, image: baseImage},
  {name: "Ricardo", age: 80, email: "ricardo@zombie.com", password: "123456dasd", status: true, image: baseImage},
  {name: "Ricardo Valeriano", age: 28, email: "ricardo_valeriano@zombie.com", password: "123456", status: true, image: baseImage},
  {name: "Guilherme", age: 55, email: "guilherme@zombie.com", password: "123456dasd", status: true, image: baseImage},
  {name: "Thiago", age: 63, email: "thiago@zombie.com", password: "123456cxvcx", status: true, image: baseImage},
  {name: "Gregg", age: 10, email: "gregg@zombie.com", password: "123456eqweqw", status: true, image: baseImage},
  {name: "Gabriel", age: 24, email: "grabiel@zombie.com", password: "123456dasd", status: true, image: baseImage},
  {name: "Jonas", age: 36, email: "jonas@zombie.com", password: "12345asdasd6", status: true, image: baseImage},
  {name: "Michele", age: 78, email: "michele@zombie.com", password: "1234dafsfvc56", status: true, image: baseImage},
  {name: "Joana", age: 90, email: "joana@zombie.com", password: "123456eqweqweq", status: true, image: baseImage},
  {name: "Susan", age: 18, email: "susan@zombie.com", password: "123456vcvcb", status: true, image: baseImage},
  {name: "Susana", age: 16, email: "susana@zombie.com", password: "123456qeqwewe", status: false, image: baseImage},
  {name: "Joaquina", age: 55, email: "joaquina@zombie.com", password: "12345bfdbvcb6", status: true, image: baseImage},
  {name: "Robson", age: 71, email: "robson@zombie.com", password: "123456fgbgdg", status: false, image: baseImage},
  {name: "David", age: 13, email: "david@zombie.com", password: "123456reyrtyrt", status: true, image: baseImage},
  {name: "Luiz", age: 9, email: "luiz@zombie.com", password: "123456cvncncn", status: true, image: baseImage},
  {name: "Zacarias", age: 84, email: "zacarias@zombie.com", password: "123456rqr", status: true, image: baseImage},
  {name: "Didi", age: 21, email: "didi@zombie.com", password: "123456cvxvc", status: true, image: baseImage},
  {name: "Mussum", age: 30, email: "mussum@zombie.com", password: "123456wqeeqe", status: true, image: baseImage},
  {name: "Dede", age: 20, email: "dede@zombie.com", password: "123456rtuuth", status: false, image: baseImage},
  {name: "Ronald", age: 51, email: "ronald@zombie.com", password: "12345609808908", status: false, image: baseImage},
  {name: "Douglas", age: 61, email: "douglas@zombie.com", password: "1234524234fsdfs6", status: true, image: baseImage},
  {name: "Roberta", age: 29, email: "roberta@zombie.com", password: "123456sfas21e23", status: true, image: baseImage},
  {name: "Gabriela", age: 11, email: "gabriela@zombie.com", password: "1wqeqwqeqwe23456", status: true, image: baseImage},
  {name: "Daniela", age: 91, email: "daniela@zombie.com", password: "123456e213", status: true, image: baseImage},
  {name: "Debora", age: 19, email: "debora@zombie.com", password: "123456reqeq", status: false, image: baseImage},
  {name: "Georgia", age: 102, email: "georgia@zombie.com", password: "1qweqeqdqe23456", status: true, image: baseImage},
  {name: "Jean", age: 44, email: "jean@zombie.com", password: "12345wqwee6", status: true, image: baseImage},
  {name: "Giovane", age: 21, email: "giovane@zombie.com", password: "1234fq21256", status: true, image: baseImage}
])

Banner.create([
  {title: "Banner 1", image: "http://placehold.it/960x300", link: "http://google.com", caption: "Caption Banner 1", order: 0, status: true},
  {title: "Banner 2", image: "http://placehold.it/960x300", link: "http://google.com", caption: "Caption Banner 2", order: 0, status: true},
  {title: "Banner 3", image: "http://placehold.it/960x300", link: "http://google.com", caption: "Caption Banner 3", order: 0, status: true},
  {title: "Banner 4", image: "http://placehold.it/960x300", link: "http://google.com", caption: "Caption Banner 4", order: 0, status: true},
  {title: "Banner 5", image: "http://placehold.it/960x300", link: "http://google.com", caption: "Caption Banner 5", order: 0, status: true},
  {title: "Banner 6", image: "http://placehold.it/960x300", link: "http://google.com", caption: "Caption Banner 6", order: 0, status: true},
  {title: "Banner 7", image: "http://placehold.it/960x300", link: "http://google.com", caption: "Caption Banner 7", order: 0, status: true},
  {title: "Banner 8", image: "http://placehold.it/960x300", link: "http://google.com", caption: "Caption Banner 8", order: 0, status: true},
  {title: "Banner 9", image: "http://placehold.it/960x300", link: "http://google.com", caption: "Caption Banner 9", order: 0, status: true},
  {title: "Banner 10", image: "http://placehold.it/960x300", link: "http://google.com", caption: "Caption Banner 10", order: 0, status: true},
  {title: "Banner 11", image: "http://placehold.it/960x300", link: "http://google.com", caption: "Caption Banner 11", order: 0, status: true},
  {title: "Banner 12", image: "http://placehold.it/960x300", link: "http://google.com", caption: "Caption Banner 12", order: 0, status: true},
  {title: "Banner 13", image: "http://placehold.it/960x300", link: "http://google.com", caption: "Caption Banner 13", order: 0, status: true},
  {title: "Banner 14", image: "http://placehold.it/960x300", link: "http://google.com", caption: "Caption Banner 14", order: 0, status: true},
  {title: "Banner 15", image: "http://placehold.it/960x300", link: "http://google.com", caption: "Caption Banner 15", order: 0, status: true}
])

User.create!([
  {name: "George", email: "george@teste.com", image: baseImage, status: 1, password: basePassword},
  {name: "Debora", email: "debora@teste.com", image: baseImage, status: 1, password: basePassword},
  {name: "Alain", email: "alain@teste.com", image: baseImage, status: 1, password: basePassword},
  {name: "Neusa", email: "neusa@teste.com", image: baseImage, status: 1, password: basePassword},
  {name: "Naruto", email: "naruto@teste.com", image: baseImage, status: 1, password: basePassword},
  {name: "Teste", email: "teste@teste.com", image: baseImage, status: 1, password: basePassword}
])

Category.create([
  {name: "Informatica", status: 1},
  {name: "Acessorios", status: 1},
  {name: "Brinquedos", status: 1},
  {name: "Jogos", status: 1},
  {name: "Roupas", status: 1},
  {name: "Calcados", status: 1},
  {name: "Carros", status: 1},
  {name: "Teste", status: 1}
])

Product.create([
  {name: "DVD", description: "Testando", main_image: "", price: 100.00, status: 1}
])

user = User.first
product = Product.first
product.categories << Category.where(id: [1,2,3])
ProductImage.create(image: baseImage, position: 0, status: 1, product_id: product[:id])
client = user.create_client(zipcode: "02882-000", phone: "(11) 2222-3333", street: "Street Something", country_id: 0)
order = Order.create(total_price: 150.00, status: 1, client_id: client[:id])
OrderItem.create(quantity: 1, price_unit: 55.50, status: 1, order: order, product: product)