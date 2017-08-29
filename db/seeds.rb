Restaurant.create(name: 'O Learys Kista', address1: 'Danmarksgatan 42', postal_code: '164 91', city: 'Kista', cuisine: 'Fast Food')
Restaurant.create(name: 'Allé Grillen Rinkeby', address1: 'Rinkebysvängen', postal_code: '163 74', city: 'Spånga', cuisine: 'Fast Food')
Restaurant.create(name: 'Flysta Pizzeria', address1: 'Spångavägen 321', postal_code: '163 46', city: 'Spånga', cuisine: 'Fast Food')
Restaurant.create(name: 'Spånga Konditori', address1: 'Spånga Stationsplan 1', postal_code: '163 51', city: 'Spånga', cuisine: 'Fast Food')
Restaurant.create(name: 'Viveka och Lottas', address1: 'Antenngatan 49B', postal_code: '421 33', city: 'Västra Frölunda', cuisine: 'Fast Food')
Restaurant.create(name: 'Pizzeria Uzuner', address1: 'Rundradiogatan 4', postal_code: '421 35', city: 'Västra Frölunda', cuisine: 'Fast Food')

DishCategory.create(name: 'Main')
DishCategory.create(name: 'Starter')
DishCategory.create(name: 'Dessert')

Dish.create(title: 'Papadom', description: 'Deep fried crunchy things', price: 100, restaurant: Restaurant.first, dish_category: DishCategory.first)
