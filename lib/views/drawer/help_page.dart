import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/components/app_back_button.dart';
import '../../core/constants/constants.dart';
import '../../core/themes/app_themes.dart';
import 'components/help_topics.dart';
import 'components/top_questions.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Talk to our ChatBot'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppDefaults.padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi! How can we help?',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const _SearchBar(),
              const TopQuestions(),
              const HelpTopics(),
            ],
          ),
        ),
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        inputDecorationTheme: AppTheme.secondaryInputDecorationTheme,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppDefaults.padding),
        child: TextField(
          decoration: InputDecoration(
            labelText: 'Search',
            suffixIcon: IconButton(
              icon: SvgPicture.asset(
                AppIcons.search,
                width: 24,
                colorFilter: const ColorFilter.mode(
                  AppColors.placeholder,
                  BlendMode.srcIn,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
