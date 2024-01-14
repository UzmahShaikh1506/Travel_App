import 'package:flutter/material.dart';

class PlacesAndDishes extends StatelessWidget {
  final Map<String, dynamic> jsonData =
  {
      "id": "9",
      "name": "Mumbai",
      "capital": "",
      "about": "Mumbai, the financial capital of India, is a bustling metropolis that never sleeps. Also known as Bombay, this city is a melting pot of cultures, offering a vibrant blend of traditions, modernity, and historical landmarks. With its iconic skyline, bustling street life, and diverse population, Mumbai is a city of dreams where people come to pursue their aspirations in various fields.",
      "climate": "Situated on the west coast of India, Mumbai experiences a tropical climate with distinct wet and dry seasons. The city enjoys a moderate climate during winter (November to February) and can be hot and humid during the monsoon season (June to September). Summers (March to June) are warm, and the coastal location influences the weather with occasional rain showers.",
      "history": "The history of Mumbai dates back to the ancient times when it was a cluster of islands inhabited by the Koli fishermen. Over the centuries, it saw the rule of various empires, including the Mauryas, Chalukyas, and Rashtrakutas. The Portuguese, led by Alfonso de Albuquerque, later gained control in the 16th century. In 1661, Mumbai was ceded to the British as part of the dowry in the marriage of Charles II of England to Catherine of Braganza. The city played a crucial role in India's struggle for independence and eventually became the capital of the Bombay Presidency.",
      "time": "Mumbai is a year-round destination, but the best time to visit is during the winter months from November to February when the weather is pleasant. The monsoon season brings heavy rainfall, while summers can be hot and humid. The city comes alive with festivals, events, and cultural activities throughout the year.",
      "img": [
        'https://www.burohappold.com/wp-content/uploads/2022/02/Mumbai-skyline_copyright-Adobe-Stock_01.jpg'
      ],
      "products": [
        {
          "name": "Mumbai Street Food",
          "description": "Mumbai is famous for its diverse and delicious street food. From vada pav and pav bhaji to bhel puri and sev puri, the city's street food scene is a gastronomic delight for food lovers. The vibrant street stalls and food markets offer a unique culinary experience.",
          "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Pav_Bhaji_at_Shivaji_Park_%28cropped%29.jpg/800px-Pav_Bhaji_at_Shivaji_Park_%28cropped%29.jpg"
        },
        {
          "name": "Bombay Sandwich",
          "description": "A popular street food item, the Bombay Sandwich is a delicious and filling snack made with layers of chutney, vegetables, and spices sandwiched between slices of bread. It's a must-try for a quick and tasty bite.",
          "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Bombay_Sandwich.jpg/800px-Bombay_Sandwich.jpg"
        },
        {
          "name": "Pav Bhaji",
          "description": "Pav Bhaji is a spicy and flavorful street food dish consisting of a thick vegetable curry (bhaji) served with soft bread rolls (pav). It's a popular evening snack enjoyed by locals and visitors alike.",
          "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/Pav_Bhaji.jpg/800px-Pav_Bhaji.jpg"
        }
      ],
      "tourist": [
        {
          "name": "Gateway of India",
          "info": "The Gateway of India is an iconic monument located on the waterfront in South Mumbai. Built to commemorate the visit of King George V and Queen Mary, it has become a symbol of Mumbai and a popular gathering spot.",
          "images": "https://media1.thrillophilia.com/filestore/a6xfgd96rla05y092cy5emcpi9pu_1574833817_shutterstock_566137291.jpg?w=400&dpr=2",
          "location": "https://www.google.com/maps/place/Gateway+of+India,+Apollo+Bunder,+Colaba,+Mumbai,+Maharashtra,+India/"
        },
        {
          "name": "Chhatrapati Shivaji Maharaj Terminus",
          "info": "Formerly known as Victoria Terminus, this historic railway station is a UNESCO World Heritage Site. It showcases a blend of Victorian Gothic and traditional Indian architecture, making it a must-visit landmark.",
          "images": "https://images.timesproperty.com/blog/4980/CSMT_Railway_Station.png",
          "location": "https://www.google.com/maps/place/Chhatrapati+Shivaji+Terminus,+Fort,+Mumbai,+Maharashtra,+India/"
        },
        {
          "name": "Marine Drive",
          "info": "Marine Drive, also known as the Queen's Necklace, is a picturesque promenade along the Arabian Sea. The stunning views of the sea and the city skyline make it a popular spot for leisurely walks and evening strolls.",
          "images": "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/40/ce/df/marine-drive-seen-as.jpg?w=1200&h=1200&s=1",
          "location": "https://www.google.com/maps/place/Marine+Drive,+Mumbai,+Maharashtra,+India/"
        },
        {
          "name": "Elephanta Caves",
          "info": "Located on Elephanta Island, the Elephanta Caves are a UNESCO World Heritage Site known for their ancient rock-cut temples and sculptures. The main cave is dedicated to Lord Shiva and is a captivating archaeological site.",
          "images": "https://yatrirailways.com/bl-content/uploads/pages/2873677957edf7935cfe251f242a198c/Elephanta-Caves.png",
          "location": "https://www.google.com/maps/place/Elephanta+Caves,+Gharapuri,+Maharashtra,+India/"
        },
        {
          "name": "Juhu Beach",
          "info": "Juhu Beach is a popular destination for locals and tourists alike. Known for its sandy shores and vibrant atmosphere, the beach offers a relaxing escape from the city's hustle and bustle. Enjoy a stroll, indulge in street food, and catch a mesmerizing sunset.",
          "images": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Juhu_Beach_Mumbai.jpg/800px-Juhu_Beach_Mumbai.jpg",
          "location": "https://www.google.com/maps/place/Juhu+Beach,+Juhu,+Mumbai,+Maharashtra,+India/"
        },
        {
          "name": "Haji Ali Dargah",
          "info": "Situated on an islet off the coast of Worli, Haji Ali Dargah is a renowned Islamic shrine. The white marble structure and the causeway leading to it provide a unique and spiritual experience for visitors.",
          "images": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKXCDVKr1kkFphO9rZA9APAfdmXcTGAKOlEQ&usqp=CAU",
          "location": "https://www.google.com/maps/place/Haji+Ali+Dargah,+Lala+Lajpatrai+Marg,+Mumbai,+Maharashtra,+India/"
        },
        {
          "name": "Kanheri Caves",
          "info": "Nestled within the Sanjay Gandhi National Park, the Kanheri Caves are a group of rock-cut caves and stupas. These ancient Buddhist caves showcase intricate carvings and are a peaceful retreat from the urban hustle.",
          "images": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Kanheri_cave%2C_Mumbai.jpg/800px-Kanheri_cave%2C_Mumbai.jpg",
          "location": "https://www.google.com/maps/place/Kanheri+Caves,+Borivali+East,+Mumbai,+Maharashtra,+India/"
        },
        {
          "name": "Dharavi Slum",
          "info": "Dharavi is one of Asia's largest slums and offers a unique perspective on Mumbai's social and economic dynamics. Guided tours provide insights into the vibrant community, small-scale industries, and resilience of the residents.",
          "images": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJxUGVUqTN7s32uuh2jLLABmuI36mTFocf3Q&usqp=CAU",
          "location": "https://www.google.com/maps/place/Dharavi,+Mumbai,+Maharashtra,+India/"
        },
        {
          "name": "Film City",
          "info": "Film City, located in Goregaon, is a major hub for the Indian film and television industry. Guided tours allow visitors to explore the sets, studios, and behind-the-scenes of Bollywood productions.",
          "images": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBPc1hjqbEs3DOWnoXeT5fC_An0_e56I3DpQ&usqp=CAU",
          "location": "https://www.google.com/maps/place/Film+City,+Goregaon+East,+Mumbai,+Maharashtra,+India/"
        },
        {
          "name": "Sanjay Gandhi National Park",
          "info": "A vast protected area within the city limits, Sanjay Gandhi National Park offers a green oasis with diverse flora and fauna. Visitors can explore the park's trails, visit the Kanheri Caves, and enjoy nature walks.",
          "images": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVYowSzsQbDYrQQRhE8rLJCqVXj_I7wjLoTQ&usqp=CAU",
          "location": "https://www.google.com/maps/place/Sanjay+Gandhi+National+Park,+Borivali+East,+Mumbai,+Maharashtra,+India/"
        }
      ],
      "food": {
        "description": "Mumbai offers a diverse culinary experience, ranging from street food to fine dining. The city is renowned for its street snacks, each bursting with unique flavors and spices.",
        "streetFoods": [
          {
            "name": "Vada Pav",
            "description": "Vada Pav is a quintessential Mumbai street food consisting of a spicy potato patty (vada) sandwiched in a pav (soft bread roll), usually accompanied by chutneys.",
            "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjmBSjuR1OnhqQ0nI0fEO3zgPOHHdCTBwQ7A&usqp=CAU"
          },
          {
            "name": "Misal Pav",
            "description": "Misal Pav is a spicy curry made with sprouted moth beans, topped with farsan (crispy fried snacks) and served with pav. It's a flavorsome and hearty dish.",
            "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Misal_Pav.jpg/800px-Misal_Pav.jpg"
          },
          {
            "name": "Pani Puri",
            "description": "Pani Puri, also known as Golgappa, is a popular street snack consisting of hollow puris filled with a mixture of tamarind water, mint, spices, and various fillings.",
            "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5b/Panipuri.jpg/800px-Panipuri.jpg"
          },
          {
            "name": "Sev Puri",
            "description": "Sev Puri is a delightful snack featuring crispy puris topped with diced potatoes, onions, chutneys, and sev (thin strands of fried gram flour).",
            "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Sev_Puri_-_Mumbai_India.jpg/800px-Sev_Puri_-_Mumbai_India.jpg"
          },
          {
            "name": "Kachori",
            "description": "Kachori is a deep-fried pastry filled with a spicy mixture of dal (lentils), spices, and herbs. It's often served with chutneys for an extra kick.",
            "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Atte_ki_kachori_1.JPG/800px-Atte_ki_kachori_1.JPG"
          },
          {
            "name": "Bhel Puri",
            "description": "Bhel Puri is a popular street food made with puffed rice, chopped vegetables, chutneys, and sev. It's a flavorful and crunchy snack enjoyed by many.",
            "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Bhelpuri.jpg/800px-Bhelpuri.jpg"
          },
          {
            "name": "Dabeli",
            "description": "Dabeli is a spicy and tangy street food originating from the Kutch region. It consists of a mashed potato mixture with special Dabeli masala, chutneys, and sev, served in a pav.",
            "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ed/Dabeli_in_Mumbai_%28Maharashtra%2C_India%29.jpg/800px-Dabeli_in_Mumbai_%28Maharashtra%2C_India%29.jpg"
          },
          {
            "name": "Kheema Pav",
            "description": "Kheema Pav is a savory minced meat dish, typically made with spiced ground meat served with pav. It's a hearty and satisfying street food option.",
            "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Keema_Pav_in_Mumbai.jpg/800px-Keema_Pav_in_Mumbai.jpg"
          },
          {
            "name": "Ragda Pattice",
            "description": "Ragda Pattice consists of potato patties (pattice) served with a flavorful white peas curry (ragda) and topped with chutneys, onions, and sev.",
            "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Ragda_Pattice_Mumbai_Street_Food.jpg/800px-Ragda_Pattice_Mumbai_Street_Food.jpg"
          },
          {
            "name": "Sabudana Vada",
            "description": "Sabudana Vada is a popular fasting snack made with soaked and drained sabudana (tapioca pearls), mashed potatoes, peanuts, and spices, deep-fried to perfection.",
            "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Sabudana_vada.JPG/800px-Sabudana_vada.JPG"
          },
          {
            "name": "Frankie",
            "description": "Frankie is a popular Mumbai street food wrap filled with spicy and flavorful ingredients, such as marinated meats or paneer, along with chutneys and veggies.",
            "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Frankie_Street_Food_Mumbai.jpg/800px-Frankie_Street_Food_Mumbai.jpg"
          },
          {
            "name": "Khichu",
            "description": "Khichu is a traditional Gujarati street food made from rice flour, cooked to a dough-like consistency, and seasoned with spices. It's often served with oil, green chutney, and sev.",
            "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Khichu_%28food%29.jpg/800px-Khichu_%28food%29.jpg"
          },
          {
            "name": "Chana Chaat",
            "description": "Chana Chaat is a healthy and tangy street food made with boiled chickpeas, chopped vegetables, spices, and chutneys. It's a delightful and nutritious snack.",
            "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Chana_Chat.jpg/800px-Chana_Chat.jpg"
          },
          {
            "name": "Pav Bhaji",
            "description": "Pav Bhaji is a popular street food dish consisting of a spicy vegetable curry (bhaji) served with buttered and toasted pav (soft bread roll). It's a flavorful and filling snack.",
            "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Pav_Bhaji.jpg/800px-Pav_Bhaji.jpg"
          }
        ]
      }
    };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mumbai City Guide'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Data Section
            Text(
              jsonData['name'] ?? 'City Name',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              jsonData['about'] ?? 'About information',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),

            // Places Section
            Text(
              'Places in Mumbai',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 150.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: jsonData['tourist']?.length ?? 0,
                itemBuilder: (context, index) {
                  var place = jsonData['tourist'][index];
                  return Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Card(
                      child: SizedBox(
                        width: 200.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              place['images'] ?? '',
                              width: 200.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(place['name'] ?? 'Place Name'),
                                  Text(place['info'] ?? 'Info'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16.0),

            // Dishes Section
            Text(
              'Mumbai Street Food',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 150.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: jsonData['products']?.length ?? 0,
                itemBuilder: (context, index) {
                  var food = jsonData['products'][index];
                  return Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Card(
                      child: SizedBox(
                        width: 200.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              food['image'] ?? '',
                              width: 200.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(food['name'] ?? 'Food Name'),
                                  Text(food['description'] ?? 'Description'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}