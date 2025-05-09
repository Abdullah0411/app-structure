/// Counter feature library
/// in Dart each file but it self is a library so you can import it in other files
/// but you can also define a library for a group of files
/// this is useful when you want to export multiple files in one library
/// so you can import the library and get all the files in one import
/// this is useful for features and packages
/// It's also usefel for not exposing widgets and classes that are not needed to other features by making them private
/// and only export the public ones
/// this is also useful for organizing your code
/// and making it more readable and maintainable

@MappableLib()
library counter;

import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:animated_to/animated_to.dart';

/// here will be the related files to the counter feature such as
/// models, widgets, screens, and logic, etc.
///* each part need to have a part of the library name
///* [part of counter;] on top of the file
part 'domain/models/counter_state_view_model.dart';
part 'data/counter_notifier.dart';
part 'presentation/screens/counter_screen.dart';
part 'presentation/widgets/counter_text_widget.dart';

/// You write the generated file as the libary and file name
/// and the generated file will be in the same directory as the file that contains the @MappableLib annotation
/// it will have the serliazable classes and the mapper classes for your models
///* you only need to run [flutter pub run build_runner build --delete-conflicting-outputs]
///  to generate the files in the command line or in the IDE in the terminal with same directory of the project
part 'counter.mapper.dart';
