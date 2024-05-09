// ignore_for_file: must_be_immutable

part of 'home_regular_container_bloc.dart';

/// Represents the state of HomeRegularContainer in the application.
class HomeRegularContainerState extends Equatable {
  HomeRegularContainerState({this.homeRegularContainerModelObj});

  HomeRegularContainerModel? homeRegularContainerModelObj;

  @override
  List<Object?> get props => [
        homeRegularContainerModelObj,
      ];

  HomeRegularContainerState copyWith(
      {HomeRegularContainerModel? homeRegularContainerModelObj}) {
    return HomeRegularContainerState(
      homeRegularContainerModelObj:
          homeRegularContainerModelObj ?? this.homeRegularContainerModelObj,
    );
  }
}
