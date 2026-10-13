import 'package:flutter/material.dart';

void main() {
  runApp(const MiCardApp());
}

class MiCardApp extends StatelessWidget {
  const MiCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MiCard',
      home: MiCardHome(),
    );
  }
}

class MiCardHome extends StatefulWidget {
  const MiCardHome({super.key});

  @override
  State<MiCardHome> createState() => _MicardHomeState();
}

class _MicardHomeState extends State<MiCardHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 30,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Profile picture (Make sure to remove the trailing comma inside the string)
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('android/assets/micard dp.jpeg')
                ),

                const SizedBox(height: 12),

                // Name
                const Text(
                  'Angela Yu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Cursive',
                  ),
                ),

                const SizedBox(height: 4),

                // Occupation
                const Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 3,
                  ),
                ),

                const SizedBox(height: 22),

                // Phone
                const ContactCard(
                  icon: Icons.phone,
                  text: '+44 123 456 7890',
                ),

                const SizedBox(height: 12),

                // Email
                const ContactCard(
                  icon: Icons.email,
                  text: 'angela@gmail.com',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  final IconData icon;
  final String text;

  const ContactCard({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(2),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFF007070),
            size: 19,
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.black54,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}