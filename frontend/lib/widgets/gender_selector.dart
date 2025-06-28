import 'package:flutter/material.dart';

class GenderSelector extends StatelessWidget {
  final String selectedGender;
  final ValueChanged<String> onChanged;

  const GenderSelector({
    super.key,
    required this.selectedGender,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Gender', style: TextStyle(fontWeight: FontWeight.bold)),
        Row(
          children: ['Male', 'Female', 'Other'].map((gender) {
            return Row(
              children: [
                Radio<String>(
                  value: gender,
                  groupValue: selectedGender,
                  onChanged: (value) {
                    if (value != null) {
                      onChanged(value); //  fix lỗi nullable
                    }
                  },
                ),
                Text(gender),
                const SizedBox(width: 10),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }
}
