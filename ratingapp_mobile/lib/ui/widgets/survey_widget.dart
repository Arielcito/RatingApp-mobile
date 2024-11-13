import 'package:flutter/material.dart';

class SurveyWidget extends StatefulWidget {
  final String question;
  final List<String> options;

  const SurveyWidget({
    super.key,
    required this.question,
    required this.options,
  });

  @override
  State<SurveyWidget> createState() => _SurveyWidgetState();
}

class _SurveyWidgetState extends State<SurveyWidget> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFD9D9D9),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.question,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins',
              ),
            ),
            const SizedBox(height: 10),
            ...widget.options.map((option) => Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey,
                        ),
                        child: Row(
                          children: [
                            Radio<String>(
                              value: option,
                              groupValue: selectedOption,
                              onChanged: (value) {
                                setState(() {
                                  selectedOption = value;
                                });
                              },
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              activeColor: Colors.blue,
                            ),
                            Text(
                              option,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            )).toList(),
          ],
        ),
      ),
    );
  }
} 