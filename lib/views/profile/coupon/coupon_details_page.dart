import 'package:flutter/material.dart';

import '../../../core/components/app_back_button.dart';
import '../../../core/constants/app_defaults.dart';
import 'components/coupon_card.dart';

class CouponDetailsPage extends StatelessWidget {
  const CouponDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text(
          'Offer Details Page',
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: AppDefaults.padding),
          CouponCard(
            title: 'Black\nCoffee',
            discounts: '41%',
            expire: 'Exp-28/12/2025',
            color: const Color(0xFF402FBE),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.all(AppDefaults.padding),
            child: Text(
              '🔥 Campus Deals Banner (New) 20% Off Smoothies Today! 🍹\ncollect and apply the voucher.',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
          const CouponBenefits(),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(AppDefaults.padding),
              child: Text(
                'Exp 12/12/2025',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Colors.black),
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDefaults.padding,
            ),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(elevation: 0),
                child: const Text('Redeem Now'),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            child: Text(
              'Terms and Condition',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
            ),
          ),
          const SizedBox(height: AppDefaults.padding),
        ],
      ),
    );
  }
}

class CouponBenefits extends StatelessWidget {
  const CouponBenefits({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(AppDefaults.padding),
      child: Column(
        children: [
          BenefitsTile(
            details: '🎁 20% Off Rolex Available until Friday',
          ),
          BenefitsTile(
            details: '🍹 Free Juice on Orders Over UGX 15K',
          ),
          BenefitsTile(
            details: 'Meat Kakomando with Soda at 1k',
          ),
          BenefitsTile(
            details: 'No Cash Value',
          ),
        ],
      ),
    );
  }
}

class BenefitsTile extends StatelessWidget {
  const BenefitsTile({
    super.key,
    required this.details,
    this.onTap,
  });

  final String details;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefaults.padding),
      child: InkWell(
        onTap: onTap ?? () {},
        child: Row(
          children: [
            Container(
              width: 20,
              height: 5,
              margin: const EdgeInsets.only(right: AppDefaults.padding),
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 44, 102, 59)),
            ),
            Expanded(
              child: Text(details),
            )
          ],
        ),
      ),
    );
  }
}
