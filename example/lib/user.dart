import 'dart:math';

import 'package:fakerable_annotations/fakerable_annotations.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import 'book.dart';

part 'user.fakerable.g.dart';

enum Location {
  china,
  usa,
  ja,
  se,
  uk;
}

@fakerable
class User {
  final Book book;
  final Location location;
  final Axis axis;

  const User({
    required this.book,
    required this.location,
    required this.axis,
  });

  factory User.fakerable() => _$UserFakerable();
}
