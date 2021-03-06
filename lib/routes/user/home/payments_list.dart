import 'package:breez/bloc/account/account_model.dart';
import 'package:breez/routes/user/home/payment_item.dart';
import 'package:flutter/material.dart';

class PaymentsList extends StatelessWidget {
  final List<PaymentInfo> _payments;
  final double _itemHeight;
  final GlobalKey firstPaymentItemKey;

  PaymentsList(this._payments, this._itemHeight, this.firstPaymentItemKey);

  @override
  Widget build(BuildContext context) {
    return new SliverFixedExtentList(
      itemExtent: _itemHeight,
      delegate: new SliverChildBuilderDelegate((BuildContext context, int index) {
        return PaymentItem(_payments[index], _payments.length - 1 == index, 0 == index, firstPaymentItemKey);
      }, childCount: _payments.length),
    );
  }
}
