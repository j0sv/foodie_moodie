Restaurant.create(name: 'India4Life', address1: 'Danmarksgatan 42', postal_code: '164 91', city: 'Kista', cuisine: 'Fast Food')
Restaurant.create(name: 'Allé Grillen Rinkeby', address1: 'Rinkebysvängen', postal_code: '163 74', city: 'Spånga', cuisine: 'Fast Food')
Restaurant.create(name: 'Flysta Pizzeria', address1: 'Spångavägen 321', postal_code: '163 46', city: 'Spånga', cuisine: 'Fast Food')
Restaurant.create(name: 'Spånga Konditori', address1: 'Spånga Stationsplan 1', postal_code: '163 51', city: 'Spånga', cuisine: 'Fast Food')
Restaurant.create(name: 'Viveka och Lottas', address1: 'Antenngatan 49B', postal_code: '421 33', city: 'Västra Frölunda', cuisine: 'Fast Food')
Restaurant.create(name: 'Pizzeria Uzuner', address1: 'Rundradiogatan 4', postal_code: '421 35', city: 'Västra Frölunda', cuisine: 'Fast Food')

DishCategory.create(name: 'Main')
DishCategory.create(name: 'Starter')
DishCategory.create(name: 'Dessert')

Dish.create(title: 'Papadom', description: 'Deep fried crunchy things', price: 100, restaurant: Restaurant.first, dish_category: DishCategory.first, image: URI.parse('https://d2abve4vv95fsr.cloudfront.net/ry0LuUuwnzLg19m4skTjMrbIOwY=/640x348/smart/com.postmates.img.prod.s3.amazonaws.com/22eebc3d-8259-4347-8390-90e82ab151d7/orig.jpg'))
Dish.create(title: 'Chicken Biryani', description: 'Served with raita, biryani shorba and red onion.', price: 140, restaurant: Restaurant.first, dish_category: DishCategory.first, image: URI.parse('https://i0.wp.com/files.hungryforever.com/wp-content/uploads/2017/06/09121657/chicken-fry-biryani-recipes.jpg?w=1269&strip=all&quality=80'))
