import 'package:flutter/material.dart';

/// Basit katalog öğesi modeli — veri yerel listeden gelir.
@immutable
class Medicine {
  final String name;
  final String shortDescription;
  final String description;
  final String imagePath;
  final double price;

  const Medicine({
    required this.name,
    required this.shortDescription,
    required this.description,
    required this.imagePath,
    required this.price,
  });

  String get formattedPrice => '${price.toStringAsFixed(2)} ₺';

  /// Ödev için sabit örnek veri (API yok).
  static const List<Medicine> catalog = [
    Medicine(
      name: 'Parol',
      shortDescription: 'Parasetamol içeren ağrı kesici.',
      description:
          'Parasetamol etken maddeli tablet. Baş ağrısı, diş ağrısı ve ateş gibi '
          'durumlarda kullanılabilir. Dozaj ve kullanım süresi için mutlaka '
          'eczacınıza veya hekiminize danışın.',
      imagePath: 'assets/images/parol.jpg',
      price: 89.90,
    ),
    Medicine(
      name: 'Nurofen',
      shortDescription: 'İbuprofen bazlı ağrı kesici.',
      description:
          'İbuprofen içerir. Hafif ila orta şiddette ağrılarda yardımcı olabilir. '
          'Mide hassasiyeti olanlarda dikkatli kullanılmalıdır; bilgi için '
          'kılavuza bakın.',
      imagePath: 'assets/images/nurofen.jpg',
      price: 124.50,
    ),
    Medicine(
      name: 'Augmentin',
      shortDescription: 'Antibiyotik (reçeteli).',
      description:
          'Amoksisilin ve klavulanik asit kombinasyonudur. Sadece hekim önerisiyle '
          've reçeteyle kullanılmalıdır. Tedavi süresini kendi başınıza bırakmayın.',
      imagePath: 'assets/images/augmentin.jpg',
      price: 349.00,
    ),
  ];
}
