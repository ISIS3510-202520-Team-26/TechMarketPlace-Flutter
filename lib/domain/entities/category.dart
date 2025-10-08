enum CatalogCategory { TEXTBOOKS, ELECTRONICS, PHONES, ACCESSORIES, SERVICES }

enum BookCategory { SCIENCE, MATH, ENGINEERING, LITERATURE, OTHER }

enum AcademicMaterialType { notes, kit, supplies, services }

extension CatalogCategoryX on CatalogCategory {
  String get label => switch (this) {
        CatalogCategory.TEXTBOOKS => 'Textbooks',
        CatalogCategory.ELECTRONICS => 'Electronics',
        CatalogCategory.PHONES => 'Phones',
        CatalogCategory.ACCESSORIES => 'Accessories',
        CatalogCategory.SERVICES => 'Services',
      };
}
