import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Profile Card',
      home: const ProfileCardScreen(),
    );
  }
}

class ProfileCardScreen extends StatelessWidget {
  const ProfileCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F0EB),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(24),
          width: 300,
          height: 380,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF722F37).withOpacity(0.15),
                blurRadius: 15,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              // Banner burgundy
              Container(
                height: 110,
                decoration: const BoxDecoration(
                  color: Color(0xFF8B3A4A),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),

              // Badge MOBILE
              Positioned(
                top: 85,
                right: 20,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD4AF37),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFFD4AF37).withOpacity(0.3),
                        blurRadius: 6,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Text(
                    'MOBILE',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),

              // Konten
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 130, 24, 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nurfitri Desi',
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF2C1A1D),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      'NIM: 2471150009',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: const Color(0xFF8D6E63),
                      ),
                    ),
                    Text(
                      'Teknik Informatika',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: const Color(0xFF8D6E63),
                      ),
                    ),
                    const SizedBox(height: 18),
                    // Garis aksen burgundy (diperpanjang)
                    Container(
                      width: 80,
                      height: 3,
                      color: const Color(0xFF8B3A4A),
                    ),
                    const SizedBox(height: 18),
                    Text(
                      'Minat / Skill:',
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF722F37),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        _buildSkillChip('UI Design'),
                        const SizedBox(width: 10),
                        _buildSkillChip('UX Research'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSkillChip(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFFCE4EC),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFF8B3A4A), width: 1),
      ),
      child: Text(
        label,
        style: GoogleFonts.poppins(
          color: const Color(0xFF8B3A4A),
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
      ),
    );
  }
}