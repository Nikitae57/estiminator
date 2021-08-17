import 'package:mobx/mobx.dart';

extension MxFutureExtension on ObservableFuture {
  bool get isPending => status == FutureStatus.pending;
  bool get isFullfilled => status == FutureStatus.fulfilled;
  bool get isRejected => status == FutureStatus.rejected;
}
