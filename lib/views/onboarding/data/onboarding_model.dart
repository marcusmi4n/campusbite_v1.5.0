import 'dart:convert';

class OnboardingModel {
  final String imageUrl;
  final String headline;
  final String description;
  final bool isLottie; // New field to distinguish between image types

  OnboardingModel({
    required this.imageUrl,
    required this.headline,
    required this.description,
    this.isLottie = false, // Default to false for backward compatibility
  });

  // Existing methods updated with isLottie field
  OnboardingModel copyWith({
    String? imageUrl,
    String? headline,
    String? description,
    bool? isLottie,
  }) {
    return OnboardingModel(
      imageUrl: imageUrl ?? this.imageUrl,
      headline: headline ?? this.headline,
      description: description ?? this.description,
      isLottie: isLottie ?? this.isLottie,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'imageUrl': imageUrl,
      'headline': headline,
      'description': description,
      'isLottie': isLottie,
    };
  }

  factory OnboardingModel.fromMap(Map<String, dynamic> map) {
    return OnboardingModel(
      imageUrl: map['imageUrl'] ?? '',
      headline: map['headline'] ?? '',
      description: map['description'] ?? '',
      isLottie: map['isLottie'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory OnboardingModel.fromJson(String source) =>
      OnboardingModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'OnboardingModel(imageUrl: $imageUrl, headline: $headline, description: $description, isLottie: $isLottie)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OnboardingModel &&
        other.imageUrl == imageUrl &&
        other.headline == headline &&
        other.description == description &&
        other.isLottie == isLottie;
  }

  @override
  int get hashCode =>
      imageUrl.hashCode ^
      headline.hashCode ^
      description.hashCode ^
      isLottie.hashCode;
}
