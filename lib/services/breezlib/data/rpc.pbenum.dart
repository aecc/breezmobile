///
//  Generated code. Do not modify.
//  source: rpc.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class Account_AccountStatus extends $pb.ProtobufEnum {
  static const Account_AccountStatus WAITING_DEPOSIT = Account_AccountStatus._(0, 'WAITING_DEPOSIT');
  static const Account_AccountStatus WAITING_DEPOSIT_CONFIRMATION = Account_AccountStatus._(1, 'WAITING_DEPOSIT_CONFIRMATION');
  static const Account_AccountStatus PROCESSING_BREEZ_CONNECTION = Account_AccountStatus._(2, 'PROCESSING_BREEZ_CONNECTION');
  static const Account_AccountStatus PROCESSING_WITHDRAWAL = Account_AccountStatus._(3, 'PROCESSING_WITHDRAWAL');
  static const Account_AccountStatus ACTIVE = Account_AccountStatus._(4, 'ACTIVE');

  static const $core.List<Account_AccountStatus> values = <Account_AccountStatus> [
    WAITING_DEPOSIT,
    WAITING_DEPOSIT_CONFIRMATION,
    PROCESSING_BREEZ_CONNECTION,
    PROCESSING_WITHDRAWAL,
    ACTIVE,
  ];

  static final $core.Map<$core.int, Account_AccountStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Account_AccountStatus valueOf($core.int value) => _byValue[value];

  const Account_AccountStatus._($core.int v, $core.String n) : super(v, n);
}

class Payment_PaymentType extends $pb.ProtobufEnum {
  static const Payment_PaymentType DEPOSIT = Payment_PaymentType._(0, 'DEPOSIT');
  static const Payment_PaymentType WITHDRAWAL = Payment_PaymentType._(1, 'WITHDRAWAL');
  static const Payment_PaymentType SENT = Payment_PaymentType._(2, 'SENT');
  static const Payment_PaymentType RECEIVED = Payment_PaymentType._(3, 'RECEIVED');

  static const $core.List<Payment_PaymentType> values = <Payment_PaymentType> [
    DEPOSIT,
    WITHDRAWAL,
    SENT,
    RECEIVED,
  ];

  static final $core.Map<$core.int, Payment_PaymentType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Payment_PaymentType valueOf($core.int value) => _byValue[value];

  const Payment_PaymentType._($core.int v, $core.String n) : super(v, n);
}

class NotificationEvent_NotificationType extends $pb.ProtobufEnum {
  static const NotificationEvent_NotificationType READY = NotificationEvent_NotificationType._(0, 'READY');
  static const NotificationEvent_NotificationType INITIALIZATION_FAILED = NotificationEvent_NotificationType._(1, 'INITIALIZATION_FAILED');
  static const NotificationEvent_NotificationType ACCOUNT_CHANGED = NotificationEvent_NotificationType._(2, 'ACCOUNT_CHANGED');
  static const NotificationEvent_NotificationType PAYMENT_SENT = NotificationEvent_NotificationType._(3, 'PAYMENT_SENT');
  static const NotificationEvent_NotificationType INVOICE_PAID = NotificationEvent_NotificationType._(4, 'INVOICE_PAID');
  static const NotificationEvent_NotificationType ROUTING_NODE_CONNECTION_CHANGED = NotificationEvent_NotificationType._(5, 'ROUTING_NODE_CONNECTION_CHANGED');
  static const NotificationEvent_NotificationType LIGHTNING_SERVICE_DOWN = NotificationEvent_NotificationType._(6, 'LIGHTNING_SERVICE_DOWN');
  static const NotificationEvent_NotificationType FUND_ADDRESS_CREATED = NotificationEvent_NotificationType._(7, 'FUND_ADDRESS_CREATED');
  static const NotificationEvent_NotificationType FUND_ADDRESS_UNSPENT_CHANGED = NotificationEvent_NotificationType._(8, 'FUND_ADDRESS_UNSPENT_CHANGED');
  static const NotificationEvent_NotificationType BACKUP_SUCCESS = NotificationEvent_NotificationType._(9, 'BACKUP_SUCCESS');
  static const NotificationEvent_NotificationType BACKUP_FAILED = NotificationEvent_NotificationType._(10, 'BACKUP_FAILED');
  static const NotificationEvent_NotificationType BACKUP_AUTH_FAILED = NotificationEvent_NotificationType._(11, 'BACKUP_AUTH_FAILED');
  static const NotificationEvent_NotificationType BACKUP_NODE_CONFLICT = NotificationEvent_NotificationType._(12, 'BACKUP_NODE_CONFLICT');
  static const NotificationEvent_NotificationType BACKUP_REQUEST = NotificationEvent_NotificationType._(13, 'BACKUP_REQUEST');

  static const $core.List<NotificationEvent_NotificationType> values = <NotificationEvent_NotificationType> [
    READY,
    INITIALIZATION_FAILED,
    ACCOUNT_CHANGED,
    PAYMENT_SENT,
    INVOICE_PAID,
    ROUTING_NODE_CONNECTION_CHANGED,
    LIGHTNING_SERVICE_DOWN,
    FUND_ADDRESS_CREATED,
    FUND_ADDRESS_UNSPENT_CHANGED,
    BACKUP_SUCCESS,
    BACKUP_FAILED,
    BACKUP_AUTH_FAILED,
    BACKUP_NODE_CONFLICT,
    BACKUP_REQUEST,
  ];

  static final $core.Map<$core.int, NotificationEvent_NotificationType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static NotificationEvent_NotificationType valueOf($core.int value) => _byValue[value];

  const NotificationEvent_NotificationType._($core.int v, $core.String n) : super(v, n);
}

class FundStatusReply_FundStatus extends $pb.ProtobufEnum {
  static const FundStatusReply_FundStatus NO_FUND = FundStatusReply_FundStatus._(0, 'NO_FUND');
  static const FundStatusReply_FundStatus WAITING_CONFIRMATION = FundStatusReply_FundStatus._(1, 'WAITING_CONFIRMATION');
  static const FundStatusReply_FundStatus CONFIRMED = FundStatusReply_FundStatus._(2, 'CONFIRMED');
  static const FundStatusReply_FundStatus TRANSFER_ERROR = FundStatusReply_FundStatus._(3, 'TRANSFER_ERROR');

  static const $core.List<FundStatusReply_FundStatus> values = <FundStatusReply_FundStatus> [
    NO_FUND,
    WAITING_CONFIRMATION,
    CONFIRMED,
    TRANSFER_ERROR,
  ];

  static final $core.Map<$core.int, FundStatusReply_FundStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FundStatusReply_FundStatus valueOf($core.int value) => _byValue[value];

  const FundStatusReply_FundStatus._($core.int v, $core.String n) : super(v, n);
}

