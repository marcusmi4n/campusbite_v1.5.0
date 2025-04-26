import 'package:flutter/material.dart';

import '../../../core/components/title_and_action_button.dart';
import 'checkout_address_card.dart';

class AddressSelector extends StatelessWidget {
  const AddressSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleAndActionButton(
          title: 'Select Faculty',
          actionLabel: 'Add New',
          onTap: () {},
          isHeadline: false,
        ),
        AddressCard(
          label: 'Lecture Room',
          phoneNumber: '(256) 708-626730',
          address: 'Smart Ideas, Innovation Hub',
          isActive: false,
          onTap: () {},
        ),
        AddressCard(
          label: 'Course',
          phoneNumber: '(256) 704-288436',
          address: 'Classroom, Room 2.10',
          isActive: true,
          onTap: () {},
        )
      ],
    );
  }
}
