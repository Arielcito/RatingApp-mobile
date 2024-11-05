import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/theme/custom_styles.dart';
import 'package:ratingapp_mobile/ui/widgets/secondary_app_bar_widget.dart';

class ChannelsScreen extends StatelessWidget {
  const ChannelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomStyles.colorDeepBlue,
      appBar: const SecondaryAppBarWidget(),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(34.0)),
                  borderSide: BorderSide(color: Colors.white),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(34.0)),
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(34.0)),
                  borderSide: BorderSide(color: Colors.white),
                ),
                hintText: 'Buscar',
                hintStyle: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontSize: 12),
                prefixIcon: Icon(Icons.search, color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Lista de Canales',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins"),
                      ),
                    ),
                  ),
                  const MockupChannelList(
                    itemCount: 4,
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Vistos Recientemente',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins"),
                      ),
                    ),
                  ),
                  const MockupChannelList(
                    itemCount: 3,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MockupChannelList extends StatelessWidget {
  final int itemCount;

  const MockupChannelList({required this.itemCount, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(itemCount, (index) {
        return Card(
          color: Colors.transparent,
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(10),
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.network(
                'https://picsum.photos/150/80',
                fit: BoxFit.contain,
                height: 75,
              ),
            ),
            title: Text('Programa $index',
                style: const TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontSize: 18)),
            subtitle: const Text('Descripción breve',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: "Poppins")),
            trailing: const Icon(Icons.favorite_border, color: Colors.white),
          ),
        );
      }),
    );
  }
}


