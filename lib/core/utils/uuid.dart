import 'dart:math';

final _rand = Random();

String newId({String prefix = ''}) {
  final ts = DateTime.now().microsecondsSinceEpoch.toRadixString(36);
  final r = List.generate(8, (_) => _rand.nextInt(36))
      .map((i) => i.toRadixString(36))
      .join();
  return '$prefix$ts$r';
}
