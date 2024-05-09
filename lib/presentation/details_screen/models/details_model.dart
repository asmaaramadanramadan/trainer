// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DetailsModel extends Equatable {
  DetailsModel() {}

  DetailsModel copyWith() {
    return DetailsModel();
  }

  @override
  List<Object?> get props => [];
}
