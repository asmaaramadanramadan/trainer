// ignore_for_file: must_be_immutable

part of 'scan_bloc.dart';

/// Represents the state of Scan in the application.
class ScanState extends Equatable {
  ScanState({this.scanModelObj});

  ScanModel? scanModelObj;

  @override
  List<Object?> get props => [
        scanModelObj,
      ];

  ScanState copyWith({ScanModel? scanModelObj}) {
    return ScanState(
      scanModelObj: scanModelObj ?? this.scanModelObj,
    );
  }
}
