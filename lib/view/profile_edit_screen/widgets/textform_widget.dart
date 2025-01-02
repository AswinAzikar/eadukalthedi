import 'dart:developer';
import 'package:flutter/material.dart';

/// A stateless widget that represents a form text field with an optional date picker.
class FormTextWidget extends StatelessWidget {
  // The label for the text field
  final String name;
  // The hint text displayed inside the text field
  final String hintText;
  // Boolean to enable or disable the date picker
  final bool isDatePickerEnabled;

  /// Constructor for the FormTextWidget widget.
  /// [name] is required and represents the label for the text field.
  /// [hintText] is required and represents the hint text for the text field.
  /// [isDatePickerEnabled] is optional and determines if the date picker should be enabled.
  const FormTextWidget({
    super.key,
    required this.name,
    required this.hintText,
    this.isDatePickerEnabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label for the text field
        Text(
          name,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

        // Text form field with optional date picker functionality
        TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
          ),
          // Enable the date picker if isDatePickerEnabled is true
          onTap: isDatePickerEnabled
              ? () async {
                  FocusScope.of(context)
                      .requestFocus(FocusNode()); // Hide keyboard
                  final DateTime? pickedDate = await showDatePicker(

                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101),
                  );
                  if (pickedDate != null) {
                    // Handle the selected date

                    log('Selected date: ${pickedDate.toLocal()}');
                  } else {
                    log('Date selection canceled');
                  }
                }
              : null,
          readOnly:
              isDatePickerEnabled, // Make the field read-only if date picker is enabled
        ),
      ],
    );
  }
}
