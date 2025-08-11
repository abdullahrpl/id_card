import 'dart:math';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Container(
          width: 380, // 💡 Perbaikan: Lebar total kartu disesuaikan
          height: 700, // 💡 Perbaikan: Tinggi total kartu disesuaikan
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // 💡 Perbaikan: Menggunakan SingleChildScrollView untuk mencegah overflow
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 25,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 297,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/photoprofile.jpeg',
                            ),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            color: const Color(0xff86384A),
                            width: 3,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      rawText(
                        'LEO',
                        FontWeight.w400,
                        25,
                        const Color(0xff86384A),
                      ),
                      const SizedBox(height: 1),
                      Container(
                        width: double.infinity,
                        child: const Divider(
                          thickness: 2,
                          color: Color(0xff86384A),
                        ),
                      ),
                      rawText(
                        'NAME',
                        FontWeight.w400,
                        15,
                        const Color(0xff86384A),
                      ),
                      const SizedBox(height: 15),
                      rawText(
                        'PARADOXX-R4',
                        FontWeight.w400,
                        25,
                        const Color(0xff86384A),
                      ),
                      const SizedBox(height: 1),
                      Container(
                        width: double.infinity,
                        child: const Divider(
                          thickness: 2,
                          color: Color(0xff86384A),
                        ),
                      ),
                      rawText(
                        'OPTICAL ID',
                        FontWeight.w400,
                        15,
                        const Color(0xff86384A),
                      ),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          rawText(
                            '2024\nOPTICAL',
                            FontWeight.w600,
                            35,
                            const Color(0xff86384A),
                          ),
                          const SizedBox(width: 20),
                          Image.asset('assets/images/idn.png', scale: 1.5),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // 💡 Perbaikan: Container untuk teks vertikal dengan garis miring

            ],
          ),
        ),
      ),
    );
  }

  Text rawText(String title, FontWeight fontWeight, double size, Color color) {
    return Text(
      title,
      style: TextStyle(fontWeight: fontWeight, fontSize: size, color: color),
      textAlign: TextAlign.center,
    );
  }
}
