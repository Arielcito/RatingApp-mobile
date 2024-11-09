import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/ui/screens/benefits/widgets/benefits_app_bar_widget.dart';
import 'package:ratingapp_mobile/theme/custom_styles.dart';
import 'package:ratingapp_mobile/ui/widgets/banner_widget.dart';
import 'package:ratingapp_mobile/ui/widgets/app_bars/main_bottom_nav_bar.dart';

class BenefitsScreen extends StatelessWidget {
  const BenefitsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomStyles.colorDeepBlue,
      appBar: const BenefitsAppBarWidget(),
      body: SingleChildScrollView(
        child: Container(
          color: CustomStyles.colorDeepBlue,
          child: Column(
            children: [
              const BannerWidget(
                banners: ['assets/images/benefits_screen/benefits_banner.png', 'assets/images/cyber-monday.jpg']  ,
                height: 205,
              ),
              const SizedBox(height: 20),
              const _BenefitsText(),
              const SizedBox(height: 20),
              const TimerWidget(),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Más premios!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins"),
                  ),
                ),
              ),
              ...List.generate(
                  4, (index) => MockupPrizeCard(key: ValueKey(index))),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const MainBottomNavBar(
        currentIndex: 2,
      ),
    );
  }
}

class MockupPrizeCard extends StatelessWidget {
  const MockupPrizeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      shadowColor: Colors.transparent,
      margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Image.network(
            'https://picsum.photos/150/80',
            fit: BoxFit.contain,
            height: 65,
          ),
        ),
        title: const Text('Olimpo Spa',
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Poppins",
                fontSize: 16,
                fontWeight: FontWeight.bold)),
        subtitle: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Una noche de spa',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400)),
            Text('Quedan: 4 días :11hs:11 minutos',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}

class _BenefitsText extends StatelessWidget {
  const _BenefitsText();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Descargá, divertite y ganá!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'Participa en el mejor programa de premios y sorteo. Próximamente acumula puntos y tokens por usar la app y canjealos por premios exclusivos y experiencias únicas',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class TimerWidget extends StatefulWidget {
  const TimerWidget({super.key});

  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  late DateTime endDate;
  late Duration timeRemaining;

  @override
  void initState() {
    super.initState();
    endDate = DateTime.now().add(const Duration(days: 5));
    _updateTimer();
  }

  void _updateTimer() {
    setState(() {
      timeRemaining = endDate.difference(DateTime.now());
    });
    Future.delayed(const Duration(minutes: 1), _updateTimer);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Faltan',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildTimeUnitCharacters(timeRemaining.inDays, "Días"),
            const SizedBox(width: 10),
            _buildTimeUnitCharacters(timeRemaining.inHours % 24, "Horas"),
            const SizedBox(width: 10),
            _buildTimeUnitCharacters(timeRemaining.inMinutes % 60, "Minutos"),
          ],
        ),
        const SizedBox(height: 5),
        const Text(
          'para el sorteo',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget _buildTimeUnitCharacters(int value, String unit) {
    String valueStr = value.toString().padLeft(2, '0');
    return Column(
      children: [
        Row(
          children: valueStr
              .split('')
              .map((char) => _buildCharacterBox(char))
              .toList(),
        ),
        const SizedBox(height: 5),
        Text(
          unit,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontFamily: "Poppins",
          ),
        ),
      ],
    );
  }

  Widget _buildCharacterBox(String char) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xff00A5E0),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        char,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontFamily: "Poppins",
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
