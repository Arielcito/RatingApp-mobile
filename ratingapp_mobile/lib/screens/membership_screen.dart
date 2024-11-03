import 'package:flutter/material.dart';

class MembershipScreen extends StatelessWidget {
  const MembershipScreen({super.key});

  Widget _buildMembershipCard({
    required String title,
    required String price,
    required Color color,
    required List<String> features,
    bool isPopular = false,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: color,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      price,
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: color,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: features.map((feature) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Icon(Icons.check_circle, color: color),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            feature,
                            style: const TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                      ],
                      ),
                    ),
                  )
                  .toList(),
                ),
              ),
            ],
          ),
          if (isPopular)
            Positioned(
              top: 10,
              right: 10,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  'Popular',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Membresías',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Poppins',
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF00A5E0),
              Color(0xFF005986),
            ],
          ),
        ),
        child: SafeArea(
          child: ListView(
            children: [
              _buildMembershipCard(
                title: 'Básico',
                price: '10.000 minutos',
                color: Colors.blue,
                features: [
                  'Acceso a funciones básicas',
                  'Soporte por email',
                  'Actualizaciones mensuales',
                ],
                isPopular: false,
              ),
              _buildMembershipCard(
                title: 'Pro',
                price: '20.000 minutos',
                color: Colors.purple,
                isPopular: false,
                features: [
                  'Todas las funciones básicas',
                  'Soporte prioritario',
                  'Funciones exclusivas',
                  'Sin anuncios',
                ],
              ),
              _buildMembershipCard(
                title: 'Premium',
                price: '30.000 minutos',
                color: Colors.orange,
                features: [
                  'Todas las funciones Pro',
                  'Soporte 24/7',
                  'Características personalizadas',
                  'Acceso anticipado a nuevas funciones',
                  'Dashboard analítico',
                ],
                isPopular: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
} 