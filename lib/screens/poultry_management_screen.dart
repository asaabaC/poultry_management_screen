import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: PoultryManagementScreen(),
  ));
}

class PoultryManagementScreen extends StatelessWidget {
  const PoultryManagementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Poultry Management'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Two items per row
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
          ),
          children: [
            _buildFeatureCard(
              icon: Icons.pets,
              title: 'Bird Inventory',
              color: Colors.orange[300]!,
              onTap: () {
                // Navigate to Bird Inventory Screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BirdInventoryScreen(),
                  ),
                );
              },
            ),
            _buildFeatureCard(
              icon: Icons.egg,
              title: 'Egg Production',
              color: Colors.orange[400]!,
              onTap: () {
                // Navigate to Egg Production Screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EggProductionScreen(),
                  ),
                );
              },
            ),
            _buildFeatureCard(
              icon: Icons.restaurant_menu,
              title: 'Feed Management',
              color: Colors.orange[500]!,
              onTap: () {
                // Navigate to Feed Management Screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FeedManagementScreen(),
                  ),
                );
              },
            ),
            _buildFeatureCard(
              icon: Icons.health_and_safety,
              title: 'Health & Vaccination',
              color: Colors.orange[600]!,
              onTap: () {
                // Navigate to Health & Vaccination Screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HealthVaccinationScreen(),
                  ),
                );
              },
            ),
            _buildFeatureCard(
              icon: Icons.cancel,
              title: 'Mortality Records',
              color: Colors.orange[700]!,
              onTap: () {
                // Navigate to Mortality Records Screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MortalityRecordsScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard({
    required IconData icon,
    required String title,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4.0,
              offset: const Offset(2, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50.0, color: Colors.white),
            const SizedBox(height: 8.0),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

// Dummy Screens for Navigation
class BirdInventoryScreen extends StatelessWidget {
  const BirdInventoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bird Inventory')),
      body: const Center(child: Text('Bird Inventory Screen')),
    );
  }
}

class EggProductionScreen extends StatelessWidget {
  const EggProductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Egg Production')),
      body: const Center(child: Text('Egg Production Screen')),
    );
  }
}

class FeedManagementScreen extends StatelessWidget {
  const FeedManagementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Feed Management')),
      body: const Center(child: Text('Feed Management Screen')),
    );
  }
}

class HealthVaccinationScreen extends StatelessWidget {
  const HealthVaccinationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Health & Vaccination')),
      body: const Center(child: Text('Health & Vaccination Screen')),
    );
  }
}

class MortalityRecordsScreen extends StatelessWidget {
  const MortalityRecordsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mortality Records')),
      body: const Center(child: Text('Mortality Records Screen')),
    );
  }
}
