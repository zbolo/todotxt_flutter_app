import 'package:rxdart/rxdart.dart';
import 'package:todotxt_flutter_app/models/account.dart';
import 'package:todotxt_flutter_app/resources/repository.dart';

class AccountBloc {
  final _repository = Repository();
  final _accountsFetcher = PublishSubject<List<Account>>();

  Stream<List<Account>> get accounts => _accountsFetcher.stream;

  void dispose() async {
    await _accountsFetcher.drain();
    _accountsFetcher.close();
  }
}
