import 'package:flutter/material.dart';

// Clase Story para definir la estructura de una historia
class Story {
  final String bg;
  final String avatar;
  final String username;

  Story({required this.bg, required this.avatar, required this.username});
}

// Arreglo de historias
final List<Story> _stories = [
  Story(bg: 'assets/wallpapers/1.jpeg', avatar: 'assets/users/1.jpg', username: 'Erick'),
  Story(bg: 'assets/wallpapers/2.jpeg', avatar: 'assets/users/2.jpg', username: 'Pablo'),
  Story(bg: 'assets/wallpapers/3.jpeg', avatar: 'assets/users/3.jpg', username: 'Emily'),
  Story(bg: 'assets/wallpapers/4.jpeg', avatar: 'assets/users/4.jpg', username: 'Diego'),
  Story(bg: 'assets/wallpapers/5.jpeg', avatar: 'assets/users/5.jpg', username: 'Ruben'),
];

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 137,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _stories.length,
        itemBuilder: (_, index) {
          final story = _stories[index];
          return Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                margin: const EdgeInsets.all(8.0),
                width:88,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(story.bg),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 25,
                      bottom: 0,
                      child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(story.avatar),
                        radius: 20,
                      ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 27,
                      child: Text(
                        story.username,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

