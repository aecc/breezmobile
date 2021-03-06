import 'package:auto_size_text/auto_size_text.dart';
import 'package:breez/bloc/account/account_actions.dart';
import 'package:breez/bloc/account/account_bloc.dart';
import 'package:breez/bloc/account/account_model.dart';
import 'package:breez/bloc/invoice/invoice_model.dart';
import 'package:breez/theme_data.dart' as theme;
import 'package:breez/widgets/payment_request_dialog.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentConfirmationDialog extends StatefulWidget {
  final AccountBloc accountBloc;
  final PaymentRequestModel invoice;
  final double _initialDialogSize;
  final Int64 _amountToPay;
  final String _amountToPayStr;
  final Function(PaymentRequestState state) _onStateChange;

  PaymentConfirmationDialog(this.accountBloc, this.invoice, this._initialDialogSize, this._amountToPay, this._amountToPayStr, this._onStateChange);

  @override
  PaymentConfirmationDialogState createState() {
    return new PaymentConfirmationDialogState();
  }
}

class PaymentConfirmationDialogState extends State<PaymentConfirmationDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Container(
            height: widget._initialDialogSize,
            width: MediaQuery.of(context).size.width,
            constraints: BoxConstraints(minHeight: 220.0, maxHeight: 320.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: _buildConfirmationDialog())),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)));
  }

  List<Widget> _buildConfirmationDialog() {
    List<Widget> _confirmationDialog = <Widget>[];
    _confirmationDialog.add(_buildTitle());
    _confirmationDialog.add(_buildContent());
    _confirmationDialog.add(_buildActions());
    return _confirmationDialog;
  }

  Container _buildTitle() {
    return Container(
      height: 64.0,
      padding: EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 8.0),
      child: Text(
        "Payment Confirmation",
        style: theme.alertTitleStyle,
        textAlign: TextAlign.center,
      ),
    );
  }

  Expanded _buildContent() {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: <Widget>[
            Text(
              'Are you sure you want to pay',
              style: theme.alertStyle,
              textAlign: TextAlign.center,
            ),
            AutoSizeText.rich(
                TextSpan(children: <TextSpan>[
                  TextSpan(text: widget._amountToPayStr, style: theme.alertStyle.copyWith(fontSize: 20.0, fontWeight: FontWeight.bold)),
                  TextSpan(text: " ?")
                ]),
                maxLines: 2,
                textAlign: TextAlign.center,
                style: theme.alertStyle),
          ]),
        ),
      ),
    );
  }

  Container _buildActions() {
    List<Widget> children = <Widget>[
      new FlatButton(
        child: new Text("NO", style: theme.buttonStyle),
        onPressed: () => widget._onStateChange(PaymentRequestState.USER_CANCELLED),
      ),
      new FlatButton(
        child: new Text("YES", style: theme.buttonStyle),
        onPressed: () {
          widget.accountBloc.userActionsSink.add(SendPayment(PayRequest(widget.invoice.rawPayReq, widget._amountToPay)));
          widget._onStateChange(PaymentRequestState.PROCESSING_PAYMENT);
        },
      ),
    ];

    return Container(
      height: 64.0,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16.0, right: 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: children,
        ),
      ),
    );
  }
}
