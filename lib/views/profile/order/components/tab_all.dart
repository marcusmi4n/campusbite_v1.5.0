import 'package:flutter/material.dart';

import '../../../../core/enums/dummy_order_status.dart';
import '../../../../core/routes/app_routes.dart';
import 'order_preview_tile.dart';

class AllTab extends StatelessWidget {
  const AllTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 8),
      children: [
        OrderPreviewTile(
          orderID: '232425627',
          date: '25 Nov',
          status: OrderStatus.confirmed,
          onTap: () => Navigator.pushNamed(context, AppRoutes.orderDetails),
        ),
        OrderPreviewTile(
          orderID: '232425627',
          date: '02 Dec',
          status: OrderStatus.processing,
          onTap: () => Navigator.pushNamed(context, AppRoutes.orderDetails),
        ),
        OrderPreviewTile(
          orderID: '232425627',
          date: '05 Dec',
          status: OrderStatus.shipped,
          onTap: () => Navigator.pushNamed(context, AppRoutes.orderDetails),
        ),
        OrderPreviewTile(
          orderID: '232425627',
          date: '10 Dec',
          status: OrderStatus.delivery,
          onTap: () => Navigator.pushNamed(context, AppRoutes.orderDetails),
        ),
        OrderPreviewTile(
          orderID: '232425627',
          date: '15 Dec',
          status: OrderStatus.cancelled,
          onTap: () => Navigator.pushNamed(context, AppRoutes.orderDetails),
        ),
      ],
    );
  }
}
