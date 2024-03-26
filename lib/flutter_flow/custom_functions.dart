import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

bool validacpfcnpj(String value) {
  if (value.isEmpty) {
    return false;
  }
  ;

  value = value.replaceAll(RegExp('[^0-9]'), '');

  if (value.length == 11) {
    // CPF validation
    int sum = 0;
    for (int i = 0; i < 9; i++) {
      sum += int.parse(value[i]) * (10 - i);
    }

    int mod = sum % 11;
    if (mod < 2) {
      if (int.parse(value[9]) != 0) return false;
    } else {
      if (int.parse(value[9]) != 11 - mod) return false;
    }

    sum = 0;
    for (int i = 0; i < 10; i++) {
      sum += int.parse(value[i]) * (11 - i);
    }
    mod = sum % 11;
    if (mod < 2) {
      if (int.parse(value[10]) != 0) return false;
    } else {
      if (int.parse(value[10]) != 11 - mod) return false;
    }

    return true;
  } else if (value.length == 14) {
    // CNPJ validation
    int sum = 0;
    List<int> weights = [5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2];
    for (int i = 0; i < 12; i++) {
      sum += int.parse(value[i]) * weights[i];
    }
    int mod = sum % 11;
    int digit1 = mod < 2 ? 0 : 11 - mod;

    sum = 0;
    weights.insert(0, 6);
    for (int i = 0; i < 13; i++) {
      sum += int.parse(value[i]) * weights[i];
    }
    mod = sum % 11;
    int digit2 = mod < 2 ? 0 : 11 - mod;

    return int.parse(value[12]) == digit1 && int.parse(value[13]) == digit2;
  } else {
    return false;
  }
}
