import 'package:flutter/material.dart';

import '../../core/components/app_back_button.dart';
import 'components/faq_item.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Terms And Condition'),
      ),
      body: const Column(
        children: [
          TitleAndParagraph(
              isTitleHeadline: false,
              title: 'Welcome to Campus Bite!.',
              paragraph:
                  '''Please read these Terms and Conditions ("Terms") carefully before using our application ("Service"). By accessing or using Campus Bite, you agree to be bound by these Terms..'''),
          TitleAndParagraph(
              isTitleHeadline: false,
              title: '1. Eligibility',
              paragraph:
                  '''You must be a registered student or authorized user of the affiliated campus to use Campus Bite. By registering, you confirm that all information provided is accurate..'''),
          TitleAndParagraph(
              isTitleHeadline: false,
              title: '2. User Account',
              paragraph:
                  '''You must create an account to place orders.\nYou are responsible for maintaining the confidentiality of your login credentials.\nCampus Bite is not liable for unauthorized access resulting from your negligence..'''),
          TitleAndParagraph(
              isTitleHeadline: false,
              title: '3. Ordering and Payments',
              paragraph:
                  '''Orders can only be placed through the Campus Bite app.\nAll payments must be made electronically via the app.\nPrices are subject to change without notice. '''),
        ],
      ),
    );
  }
}
