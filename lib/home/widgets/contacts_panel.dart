import 'package:flutter/material.dart';

class ContactsPanel extends StatelessWidget {
  const ContactsPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Contactos',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: const Row(
                children: [
                  Icon(Icons.add, color: Colors.orange, size: 35),
                  SizedBox(width: 4),
                  Text(
                    'Nuevo',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            _buildSection('Favoritos'),
            const SizedBox(height: 12),
            const ContactCard(name: 'Juana Ayala'),
            const SizedBox(height: 20),
            const ContactCard(name: 'Luis Jimenez'),
            const SizedBox(height: 30),
            _buildSection('Guardados'),
            const SizedBox(height: 12),
            const ContactCard(name: 'Adriana Salinas'),
            const SizedBox(height: 20),
            const ContactCard(name: 'Alberto Torres'),
            const SizedBox(height: 20),
            const ContactCard(name: 'Juana Ayala'),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Text _buildSection(String title) {
    return Text(
      title,
      style: TextStyle(color: Colors.grey[400], fontSize: 15),
    );
  }
}

class ContactCard extends StatelessWidget {
  const ContactCard({required this.name, super.key});
  final String name;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: const Color(0xFF2A2D32),
      child: Row(
        children: [
          const CircleAvatar(radius: 22, backgroundColor: Colors.white),
          const SizedBox(width: 10),
          Text(
            name,
            style: const TextStyle(color: Colors.white),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
