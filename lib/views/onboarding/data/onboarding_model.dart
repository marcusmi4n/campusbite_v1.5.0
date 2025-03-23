import 'dart:convert';

class OnboardingModel {
  final String imageUrl;
  final String headline;
  final String description;
  final bool isFirstPage; // Added property
  final bool isLastPage; // Added property

  OnboardingModel({
    required this.imageUrl,
    required this.headline,
    required this.description,
    this.isFirstPage = false, // Default value
    this.isLastPage = false, // Default value
  });

  OnboardingModel copyWith({
    String? imageUrl,
    String? headline,
    String? description,
    bool? isFirstPage,
    bool? isLastPage,
  }) {
    return OnboardingModel(
      imageUrl: imageUrl ?? this.imageUrl,
      headline: headline ?? this.headline,
      description: description ?? this.description,
      isFirstPage: isFirstPage ?? this.isFirstPage,
      isLastPage: isLastPage ?? this.isLastPage,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'imageUrl': imageUrl,
      'headline': headline,
      'description': description,
      'isFirstPage': isFirstPage,
      'isLastPage': isLastPage,
    };
  }

  factory OnboardingModel.fromMap(Map<String, dynamic> map) {
    return OnboardingModel(
      imageUrl: map['imageUrl'] ?? '',
      headline: map['headline'] ?? '',
      description: map['description'] ?? '',
      isFirstPage: map['isFirstPage'] ?? false,
      isLastPage: map['isLastPage'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory OnboardingModel.fromJson(String source) =>
      OnboardingModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'OnboardingModel(imageUrl: $imageUrl, headline: $headline, description: $description, isFirstPage: $isFirstPage, isLastPage: $isLastPage)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OnboardingModel &&
        other.imageUrl == imageUrl &&
        other.headline == headline &&
        other.description == description &&
        other.isFirstPage == isFirstPage &&
        other.isLastPage == isLastPage;
  }

  @override
  int get hashCode {
    return imageUrl.hashCode ^
        headline.hashCode ^
        description.hashCode ^
        isFirstPage.hashCode ^
        isLastPage.hashCode;
  }
}
