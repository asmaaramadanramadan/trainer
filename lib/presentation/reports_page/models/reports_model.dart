// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [reports_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ReportsModel extends Equatable {
  ReportsModel() {}

  ReportsModel copyWith() {
    return ReportsModel();
  }

  @override
  List<Object?> get props => [];
}
