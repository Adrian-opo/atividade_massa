import 'package:flutter/material.dart';
import '../widgets/destination_card.dart';
import 'popular_places_screen.dart';



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://cdn-icons-png.flaticon.com/512/3135/3135715.png'),
          ),
        ),
        title: Text(
          'Leonardo',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Explore o',
                style: TextStyle(
                  fontSize: 34.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Belo mundo ',
                      style: TextStyle(
                        fontSize: 34.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'world!',
                      style: TextStyle(
                        fontSize: 34.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Melhor destino',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PopularPlacesScreen()),
    );
  },
                    child: Text(
                      'Ver tudo',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Container(
                height: 500.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    DestinationCard(
                      imagePath: 'assets/a.webp',
                      country: 'Espanha',
                      location: 'Madrid, Espanha',
                      rating: '4.7',
                      reviews: '508',
                    ),
                    DestinationCard(
                      imagePath: 'assets/a.webp',
                      country: 'França',
                      location: 'Paris, França',
                      rating: '4.8',
                      reviews: '677',
                    ),
                      DestinationCard(
                      imagePath: 'assets/a.webp',
                      country: 'Espanha',
                      location: 'Madrid, Espanha',
                      rating: '4.7',
                      reviews: '532',
                    ),
                    DestinationCard(
                      imagePath: 'assets/a.webp',
                      country: 'França',
                      location: 'Paris, França',
                      rating: '4.8',
                      reviews: '60+',
                    ),
                      DestinationCard(
                      imagePath: 'assets/a.webp',
                      country: 'Espanha',
                      location: 'Madrid, Espanha',
                      rating: '4.7',
                      reviews: '50+',
                    ),
                    DestinationCard(
                      imagePath: 'assets/a.webp',
                      country: 'França',
                      location: 'Paris, França',
                      rating: '4.8',
                      reviews: '60+',
                    ),
                    // Adicione mais destinos conforme necessário
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            //colo
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
            //quando clicar no icone ele vai para a tela de perfil
              
          ),
        ],
      ),
    );
  }
}
