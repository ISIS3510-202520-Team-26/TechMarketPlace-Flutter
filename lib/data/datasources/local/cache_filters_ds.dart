class CacheFiltersDs {
  Map<String, dynamic>? lastFilters;
  List<String> lastSuggestions = const [];

  void saveFilters(Map<String, dynamic> f) => lastFilters = Map.of(f);
  void saveSuggestions(List<String> s) => lastSuggestions = List.of(s);
}
