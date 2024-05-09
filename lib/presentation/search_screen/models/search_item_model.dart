import '../../../core/app_export.dart';

/// This class is used in the [search_item_widget] screen.
class SearchItemModel {
  SearchItemModel({
    this.gardeniaplant,
    this.id,
  }) {
    gardeniaplant = gardeniaplant ?? "GARDENIA PLANT";
    id = id ?? "";
  }

  String? gardeniaplant;

  String? id;
}
