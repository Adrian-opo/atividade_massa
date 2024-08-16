import 'package:flutter/material.dart';

class PopularPlacesScreen extends StatelessWidget {
  const PopularPlacesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, // Remove a sombra da AppBar
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Lugares populares',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Todos os lugares populares',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Número de colunas na grade
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 3 / 4,
                ),
                itemCount: popularPlaces.length,
                itemBuilder: (context, index) {
                  return _buildPlaceCard(context, popularPlaces[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlaceCard(BuildContext context, Map<String, String> place) {
    return GestureDetector(
      onTap: () {
        // Implementar a navegação para a tela de detalhes ao clicar em um card
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 3,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
              child: Stack(
                children: [
                  Image.asset(
                    place['image']!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 120.0,
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Icon(
                      Icons.bookmark_border,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    place['country']!,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    place['location']!,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 16.0),
                      SizedBox(width: 4.0),
                      Text(
                        place['rating']!,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Text(
                        place['price']!,
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Dados fictícios dos lugares populares
final List<Map<String, String>> popularPlaces = [
  {
    'image': 'assets/a.webp',
    'country': 'Espanha',
    'location': 'Madrid, Espanha',
    'rating': '4.7',
    'price': 'R\$6459/Pessoa',
  },
  {
    'image': 'assets/a.webp',
    'country': 'França',
    'location': 'Paris, França',
    'rating': '4.8',
    'price': 'R\$6894/Pessoa',
  },
  {
    'image': 'assets/a.webp',
    'country': 'Peru',
    'location': 'Machu Picchu, Peru',
    'rating': '4.3',
    'price': 'R\$1761/Pessoa',
  },
  {
    'image': 'assets/a.webp',
    'country': 'Egito',
    'location': 'Pirâmide de Gizé, Egito',
    'rating': '4.5',
    'price': 'R\$8857/Pessoa',
  },
  {
    'image': 'assets/a.webp',
    'country': 'Aonang Villa Resort',
    'location': 'Bastola, Islampur',
    'rating': '4.3',
    'price': 'R\$761/Pessoa',
  },
  {
    'image': 'assets/a.webp',
    'country': 'Rangauti Resort',
    'location': 'Sylhet, Airport Road',
    'rating': '4.5',
    'price': 'R\$857/Pessoa',
  },
];