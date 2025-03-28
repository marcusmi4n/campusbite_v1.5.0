import 'dart:convert';

/// Represents a single onboarding screen content
class OnboardingModel {
  /// URL or path to the media content
  /// - For images: Network URL or asset path (e.g., 'assets/images/onboarding1.png')
  /// - For Lottie: JSON file path (e.g., 'assets/animations/onboarding1.json')
  final String imageUrl;

  /// Main title text
  final String headline;

  /// Descriptive text
  final String description;

  /// Whether the media is a Lottie animation (true) or static image (false)
  final bool isLottie;

  /// Creates an onboarding model
  const OnboardingModel({
    required this.imageUrl,
    required this.headline,
    required this.description,
    this.isLottie = false,
  });

  /// Creates a copy with updated fields
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

  /// Serializes to a Map
  Map<String, dynamic> toMap() {
    return {
      'imageUrl': imageUrl,
      'headline': headline,
      'description': description,
      'isLottie': isLottie,
    };
  }

  /// Deserializes from a Map
  factory OnboardingModel.fromMap(Map<String, dynamic> map) {
    return OnboardingModel(
      imageUrl: map['imageUrl']?.toString() ?? '',
      headline: map['headline']?.toString() ?? '',
      description: map['description']?.toString() ?? '',
      isLottie: map['isLottie'] == true,
    );
  }

  /// Serializes to JSON
  String toJson() => json.encode(toMap());

  /// Deserializes from JSON
  factory OnboardingModel.fromJson(String source) =>
      OnboardingModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'OnboardingModel('
        'imageUrl: $imageUrl, '
        'headline: $headline, '
        'description: $description, '
        'isLottie: $isLottie)';
  }

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
  int get hashCode {
    return Object.hash(
      imageUrl.hashCode,
      headline.hashCode,
      description.hashCode,
      isLottie.hashCode,
    );
  }
}
