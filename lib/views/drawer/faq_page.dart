import 'package:flutter/material.dart';

import '../../core/components/app_back_button.dart';
import 'components/faq_item.dart';

class FAQPage extends StatelessWidget {
  const FAQPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('FAQ'),
      ),
      body: const Column(
        children: [
          TitleAndParagraph(
              title: '1. How it will take to delivery?',
              paragraph:
                  '''Since we are within campus and have a number of delivery personnel our speed is relatively quick making latest 15 mins.'''),
          TitleAndParagraph(
              title: '3. What is refund system?',
              paragraph:
                  '''Due to the fact that we work for the people we do refunds incase of any unmet conditions or expectations.\n\nThough Terms & Conditions Apply.'''),
        ],
      ),
    );
  }
}
