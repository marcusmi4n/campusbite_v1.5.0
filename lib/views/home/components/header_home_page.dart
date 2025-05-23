import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/constants.dart';
import '../../../core/routes/app_routes.dart';

class HeaderHomePage extends StatelessWidget {
  const HeaderHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _SideBarButton(),
            _CurrentLocationDropDown(),
            _SearchButton(),
          ],
        ),
      ),
    );
  }
}

class _SearchButton extends StatelessWidget {
  const _SearchButton();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.pushNamed(context, AppRoutes.search),
      icon: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          color: AppColors.textInputBackground,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(AppIcons.search),
      ),
    );
  }
}

class _SideBarButton extends StatelessWidget {
  const _SideBarButton();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.pushNamed(context, AppRoutes.drawerPage),
      icon: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          color: AppColors.textInputBackground,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(AppIcons.sidebarIcon),
      ),
    );
  }
}

class _CurrentLocationDropDown extends StatelessWidget {
  const _CurrentLocationDropDown();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(AppIcons.location),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  Text(
                    'Current Location',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                  ),
                  const Text('Smart Idea, Innovation Hub'),
                ],
              ),
            ),
            const Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Color.fromARGB(255, 44, 102, 59),
            ),
          ],
        ),
      ],
    );
  }
}
