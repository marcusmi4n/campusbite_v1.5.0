import 'package:flutter/material.dart';
import '../../core/routes/app_routes.dart';
import 'components/category_tile.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 32),
          Text(
            'Choose a category',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 16),
          const CateogoriesGrid()
        ],
      ),
    );
  }
}

class CateogoriesGrid extends StatelessWidget {
  const CateogoriesGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 3,
        children: [
          CategoryTile(
            imageLink: 'https://i.imgur.com/tGChxbZ.png',
            label: 'BreakFast',
            backgroundColor: const Color.fromARGB(255, 44, 102, 59),
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://i.imgur.com/yOFxoIP.png',
            label: 'Lunch',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://i.imgur.com/GPsRaFC.png',
            label: 'Supper',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://i.imgur.com/mGRqfnc.png',
            label: 'Drinks',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://i.imgur.com/fwyz4oC.png',
            label: 'Snacks',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://i.imgur.com/DNr8a6R.png',
            label: 'Coffee',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://i.imgur.com/O2ZX5nR.png',
            label: 'Bread',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://i.imgur.com/wJBopjL.png',
            label: 'Biscuit',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://i.imgur.com/P4yJA9t.png',
            label: 'Cakes',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://i.imgur.com/sxGf76e.png',
            label: 'Pizza',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://i.imgur.com/BPvKeXl.png',
            label: 'Pack',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'https://i.imgur.com/m65fusg.png',
            label: 'Ice Cream',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.categoryDetails);
            },
          ),
        ],
      ),
    );
  }
}
