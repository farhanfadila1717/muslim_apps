import 'dart:math';

import 'package:vector_math/vector_math.dart';

double calculateDistance(double lat1, double long1, double lat2, double long2) {
  const earthRadius = 6371.01; // Earth's radius in kilometers

  final latDifference = radians(lat2 - lat1);
  final longDifference = radians(long2 - long1);

  final a = sin(latDifference / 2) * sin(latDifference / 2) +
      cos(radians(lat1)) *
          cos(radians(lat1)) *
          sin(longDifference / 2) *
          sin(longDifference / 2);

  final c = 2 * atan2(sqrt(a), sqrt(1 - a));

  return earthRadius * c;
}

String toArabicNumber(int no) {
  const arabicNumbers = [
    '٠', // Zero
    '١', // One
    '٢', // Two
    '٣', // Three
    '٤', // Four
    '٥', // Five
    '٦', // Six
    '٧', // Seven
    '٨', // Eight
    '٩', // Nine
  ];

  final noString = no.toString();
  String arabicNumber = '';
  for (int i = 0; i < noString.length; i++) {
    final char = noString[i];

    arabicNumber += arabicNumbers[int.parse(char)];
  }

  return arabicNumber;
}
