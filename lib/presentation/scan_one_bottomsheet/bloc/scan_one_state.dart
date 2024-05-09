// ignore_for_file: must_be_immutable

part of 'scan_one_bloc.dart';

/// Represents the state of ScanOne in the application.
class ScanOneState extends Equatable {
  ScanOneState({this.scanOneModelObj});

  ScanOneModel? scanOneModelObj;

  @override
  List<Object?> get props => [
        scanOneModelObj,
      ];

  ScanOneState copyWith({ScanOneModel? scanOneModelObj}) {
    return ScanOneState(
      scanOneModelObj: scanOneModelObj ?? this.scanOneModelObj,
    );
  }
}
