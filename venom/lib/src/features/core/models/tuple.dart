import 'package:dartz/dartz.dart';

abstract class Tuple {
  const Tuple();
}

abstract class NullTuple extends Tuple {
  const NullTuple();
}

abstract class ParamTuple extends Tuple {
  const ParamTuple();
}

class Tuple0 extends NullTuple {}

class Tuple1<T1> extends ParamTuple {
  final T1 value1;

  R apply<R>(Function1<T1, R> f) => f(value1);

  Tuple1<NT1> map1<NT1>(Function1<T1, NT1> f) => Tuple1(f(value1));

  const Tuple1(this.value1);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || (other is Tuple2 && value1 == other.value1);

  @override
  int get hashCode => value1.hashCode;

  @override
  String toString() => '($value1)';

  Tuple1<T1> copyWith({
    T1? value1,
  }) {
    return Tuple1(
      value1 ?? this.value1,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1':value1,
    };
  }

  factory Tuple1.fromMap(Map<String, dynamic> map) {
    return Tuple1(
      map['value1'] as T1,
    );
  }
}

class Tuple2<T1, T2> extends ParamTuple {
  final T1 value1;
  final T2 value2;

  R apply<R>(Function2<T1, T2, R> f) => f(value1, value2);

  Tuple2<NT1, T2> map1<NT1>(Function1<T1, NT1> f) => Tuple2(f(value1), value2);

  Tuple2<T1, NT2> map2<NT2>(Function1<T2, NT2> f) => Tuple2(value1, f(value2));

  const Tuple2(this.value1, this.value2);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple2 && value1 == other.value1 && value2 == other.value2);

  @override
  int get hashCode => value1.hashCode ^ value2.hashCode;

  @override
  String toString() => '($value1, $value2)';

  Tuple2<T1, T2> copyWith({
    T1? value1,
    T2? value2,
  }) {
    return Tuple2(
      value1 ?? this.value1,
      value2 ?? this.value2,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': value1,
      'value2': value2,
    };
  }

  factory Tuple2.fromMap(Map<String, dynamic> map) {
    return Tuple2(
      map['value1'] as T1,
      map['value2'] as T2,
    );
  }
}

class Tuple3<T1, T2, T3> extends ParamTuple {
  final T1 value1;
  final T2 value2;
  final T3 value3;

  R apply<R>(Function3<T1, T2, T3, R> f) => f(value1, value2, value3);

  const Tuple3(this.value1, this.value2, this.value3);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple3 &&
          value1 == other.value1 &&
          value2 == other.value2 &&
          value3 == other.value3);

  @override
  int get hashCode => value1.hashCode ^ value2.hashCode ^ value3.hashCode;

  @override
  String toString() => '($value1, $value2, $value3)';

  Tuple3<T1, T2, T3> copyWith({
    T1? value1,
    T2? value2,
    T3? value3,
  }) {
    return Tuple3(
      value1 ?? this.value1,
      value2 ?? this.value2,
      value3 ?? this.value3,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': value1,
      'value2': value2,
      'value3': value3,
    };
  }

  factory Tuple3.fromMap(Map<String, dynamic> map) {
    return Tuple3(
      map['value1'] as T1,
      map['value2'] as T2,
      map['value3'] as T3,
    );
  }
}

class Tuple4<T1, T2, T3, T4> extends ParamTuple {
  final T1 value1;
  final T2 value2;
  final T3 value3;
  final T4 value4;

  R apply<R>(Function4<T1, T2, T3, T4, R> f) =>
      f(value1, value2, value3, value4);

  const Tuple4(
    this.value1,
    this.value2,
    this.value3,
    this.value4,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple4 &&
          value1 == other.value1 &&
          value2 == other.value2 &&
          value3 == other.value3 &&
          value4 == other.value4);

  @override
  int get hashCode =>
      value1.hashCode ^ value2.hashCode ^ value3.hashCode ^ value4.hashCode;

  @override
  String toString() => '($value1, $value2, $value3, $value4)';

  Tuple4<T1, T2, T3, T4> copyWith({
    T1? value1,
    T2? value2,
    T3? value3,
    T4? value4,
  }) {
    return Tuple4(
      value1 ?? this.value1,
      value2 ?? this.value2,
      value3 ?? this.value3,
      value4 ?? this.value4,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': value1,
      'value2': value2,
      'value3': value3,
      'value4': value4,
    };
  }

  factory Tuple4.fromMap(Map<String, dynamic> map) {
    return Tuple4(
      map['value1'] as T1,
      map['value2'] as T2,
      map['value3'] as T3,
      map['value4'] as T4,
    );
  }
}

class Tuple5<T1, T2, T3, T4, T5> extends ParamTuple {
  final T1 value1;
  final T2 value2;
  final T3 value3;
  final T4 value4;
  final T5 value5;

  R apply<R>(Function5<T1, T2, T3, T4, T5, R> f) =>
      f(value1, value2, value3, value4, value5);

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  const Tuple5(
    this.value1,
    this.value2,
    this.value3,
    this.value4,
    this.value5,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple5 &&
          value1 == other.value1 &&
          value2 == other.value2 &&
          value3 == other.value3 &&
          value4 == other.value4 &&
          value5 == other.value5);

  @override
  int get hashCode =>
      value1.hashCode ^
      value2.hashCode ^
      value3.hashCode ^
      value4.hashCode ^
      value5.hashCode;

  @override
  String toString() => '($value1, $value2, $value3, $value4, $value5)';

  Tuple5<T1, T2, T3, T4, T5> copyWith({
    T1? value1,
    T2? value2,
    T3? value3,
    T4? value4,
    T5? value5,
  }) {
    return Tuple5(
      value1 ?? this.value1,
      value2 ?? this.value2,
      value3 ?? this.value3,
      value4 ?? this.value4,
      value5 ?? this.value5,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': value1,
      'value2': value2,
      'value3': value3,
      'value4': value4,
      'value5': value5,
    };
  }

  factory Tuple5.fromMap(Map<String, dynamic> map) {
    return Tuple5(
      map['value1'] as T1,
      map['value2'] as T2,
      map['value3'] as T3,
      map['value4'] as T4,
      map['value5'] as T5,
    );
  }

//</editor-fold>
}

class Tuple6<T1, T2, T3, T4, T5, T6> extends ParamTuple {
  final T1 value1;
  final T2 value2;
  final T3 value3;
  final T4 value4;
  final T5 value5;
  final T6 value6;

  R apply<R>(Function6<T1, T2, T3, T4, T5, T6, R> f) =>
      f(value1, value2, value3, value4, value5, value6);

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  const Tuple6(
    this.value1,
    this.value2,
    this.value3,
    this.value4,
    this.value5,
    this.value6,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple6 &&
          value1 == other.value1 &&
          value2 == other.value2 &&
          value3 == other.value3 &&
          value4 == other.value4 &&
          value5 == other.value5 &&
          value6 == other.value6);

  @override
  int get hashCode =>
      value1.hashCode ^
      value2.hashCode ^
      value3.hashCode ^
      value4.hashCode ^
      value5.hashCode ^
      value6.hashCode;

  @override
  String toString() => '($value1, $value2, $value3, $value4, $value5, $value6)';

  Tuple6<T1, T2, T3, T4, T5, T6> copyWith({
    T1? value1,
    T2? value2,
    T3? value3,
    T4? value4,
    T5? value5,
    T6? value6,
  }) {
    return Tuple6(
      value1 ?? this.value1,
      value2 ?? this.value2,
      value3 ?? this.value3,
      value4 ?? this.value4,
      value5 ?? this.value5,
      value6 ?? this.value6,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': value1,
      'value2': value2,
      'value3': value3,
      'value4': value4,
      'value5': value5,
      'value6': value6,
    };
  }

  factory Tuple6.fromMap(Map<String, dynamic> map) {
    return Tuple6(
      map['value1'] as T1,
      map['value2'] as T2,
      map['value3'] as T3,
      map['value4'] as T4,
      map['value5'] as T5,
      map['value6'] as T6,
    );
  }

//</editor-fold>
}

class Tuple7<T1, T2, T3, T4, T5, T6, T7> extends ParamTuple {
  final T1 value1;
  final T2 value2;
  final T3 value3;
  final T4 value4;
  final T5 value5;
  final T6 value6;
  final T7 value7;

  R apply<R>(Function7<T1, T2, T3, T4, T5, T6, T7, R> f) =>
      f(value1, value2, value3, value4, value5, value6, value7);

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  const Tuple7(
    this.value1,
    this.value2,
    this.value3,
    this.value4,
    this.value5,
    this.value6,
    this.value7,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple7 &&
          value1 == other.value1 &&
          value2 == other.value2 &&
          value3 == other.value3 &&
          value4 == other.value4 &&
          value5 == other.value5 &&
          value6 == other.value6 &&
          value7 == other.value7);

  @override
  int get hashCode =>
      value1.hashCode ^
      value2.hashCode ^
      value3.hashCode ^
      value4.hashCode ^
      value5.hashCode ^
      value6.hashCode ^
      value7.hashCode;

  @override
  String toString() =>
      '($value1, $value2, $value3, $value4, $value5, $value6, $value7)';

  Tuple7<T1, T2, T3, T4, T5, T6, T7> copyWith({
    T1? value1,
    T2? value2,
    T3? value3,
    T4? value4,
    T5? value5,
    T6? value6,
    T7? value7,
  }) {
    return Tuple7(
      value1 ?? this.value1,
      value2 ?? this.value2,
      value3 ?? this.value3,
      value4 ?? this.value4,
      value5 ?? this.value5,
      value6 ?? this.value6,
      value7 ?? this.value7,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': value1,
      'value2': value2,
      'value3': value3,
      'value4': value4,
      'value5': value5,
      'value6': value6,
      'value7': value7,
    };
  }

  factory Tuple7.fromMap(Map<String, dynamic> map) {
    return Tuple7(
      map['value1'] as T1,
      map['value2'] as T2,
      map['value3'] as T3,
      map['value4'] as T4,
      map['value5'] as T5,
      map['value6'] as T6,
      map['value7'] as T7,
    );
  }

//</editor-fold>
}

class Tuple8<T1, T2, T3, T4, T5, T6, T7, T8> extends ParamTuple {
  final T1 value1;
  final T2 value2;
  final T3 value3;
  final T4 value4;
  final T5 value5;
  final T6 value6;
  final T7 value7;
  final T8 value8;

  R apply<R>(Function8<T1, T2, T3, T4, T5, T6, T7, T8, R> f) =>
      f(value1, value2, value3, value4, value5, value6, value7, value8);

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  const Tuple8(
    this.value1,
    this.value2,
    this.value3,
    this.value4,
    this.value5,
    this.value6,
    this.value7,
    this.value8,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple8 &&
          value1 == other.value1 &&
          value2 == other.value2 &&
          value3 == other.value3 &&
          value4 == other.value4 &&
          value5 == other.value5 &&
          value6 == other.value6 &&
          value7 == other.value7 &&
          value8 == other.value8);

  @override
  int get hashCode =>
      value1.hashCode ^
      value2.hashCode ^
      value3.hashCode ^
      value4.hashCode ^
      value5.hashCode ^
      value6.hashCode ^
      value7.hashCode ^
      value8.hashCode;

  @override
  String toString() =>
      '($value1, $value2, $value3, $value4, $value5, $value6, $value7, $value8)';

  Tuple8<T1, T2, T3, T4, T5, T6, T7, T8> copyWith({
    T1? value1,
    T2? value2,
    T3? value3,
    T4? value4,
    T5? value5,
    T6? value6,
    T7? value7,
    T8? value8,
  }) {
    return Tuple8(
      value1 ?? this.value1,
      value2 ?? this.value2,
      value3 ?? this.value3,
      value4 ?? this.value4,
      value5 ?? this.value5,
      value6 ?? this.value6,
      value7 ?? this.value7,
      value8 ?? this.value8,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': value1,
      'value2': value2,
      'value3': value3,
      'value4': value4,
      'value5': value5,
      'value6': value6,
      'value7': value7,
      'value8': value8,
    };
  }

  factory Tuple8.fromMap(Map<String, dynamic> map) {
    return Tuple8(
      map['value1'] as T1,
      map['value2'] as T2,
      map['value3'] as T3,
      map['value4'] as T4,
      map['value5'] as T5,
      map['value6'] as T6,
      map['value7'] as T7,
      map['value8'] as T8,
    );
  }

//</editor-fold>
}

class Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9> extends ParamTuple {
  final T1 value1;
  final T2 value2;
  final T3 value3;
  final T4 value4;
  final T5 value5;
  final T6 value6;
  final T7 value7;
  final T8 value8;
  final T9 value9;

  R apply<R>(Function9<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> f) =>
      f(value1, value2, value3, value4, value5, value6, value7, value8, value9);

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  const Tuple9(
    this.value1,
    this.value2,
    this.value3,
    this.value4,
    this.value5,
    this.value6,
    this.value7,
    this.value8,
    this.value9,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple9 &&
          value1 == other.value1 &&
          value2 == other.value2 &&
          value3 == other.value3 &&
          value4 == other.value4 &&
          value5 == other.value5 &&
          value6 == other.value6 &&
          value7 == other.value7 &&
          value8 == other.value8 &&
          value9 == other.value9);

  @override
  int get hashCode =>
      value1.hashCode ^
      value2.hashCode ^
      value3.hashCode ^
      value4.hashCode ^
      value5.hashCode ^
      value6.hashCode ^
      value7.hashCode ^
      value8.hashCode ^
      value9.hashCode;

  @override
  String toString() =>
      '($value1, $value2, $value3, $value4, $value5, $value6, $value7, $value8, $value9)';

  Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9> copyWith({
    T1? value1,
    T2? value2,
    T3? value3,
    T4? value4,
    T5? value5,
    T6? value6,
    T7? value7,
    T8? value8,
    T9? value9,
  }) {
    return Tuple9(
      value1 ?? this.value1,
      value2 ?? this.value2,
      value3 ?? this.value3,
      value4 ?? this.value4,
      value5 ?? this.value5,
      value6 ?? this.value6,
      value7 ?? this.value7,
      value8 ?? this.value8,
      value9 ?? this.value9,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': value1,
      'value2': value2,
      'value3': value3,
      'value4': value4,
      'value5': value5,
      'value6': value6,
      'value7': value7,
      'value8': value8,
      'value9': value9,
    };
  }

  factory Tuple9.fromMap(Map<String, dynamic> map) {
    return Tuple9(
      map['value1'] as T1,
      map['value2'] as T2,
      map['value3'] as T3,
      map['value4'] as T4,
      map['value5'] as T5,
      map['value6'] as T6,
      map['value7'] as T7,
      map['value8'] as T8,
      map['value9'] as T9,
    );
  }

//</editor-fold>
}

class Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> extends ParamTuple {
  final T1 value1;
  final T2 value2;
  final T3 value3;
  final T4 value4;
  final T5 value5;
  final T6 value6;
  final T7 value7;
  final T8 value8;
  final T9 value9;
  final T10 value10;

  R apply<R>(Function10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, R> f) => f(
      value1,
      value2,
      value3,
      value4,
      value5,
      value6,
      value7,
      value8,
      value9,
      value10);

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  const Tuple10(
    this.value1,
    this.value2,
    this.value3,
    this.value4,
    this.value5,
    this.value6,
    this.value7,
    this.value8,
    this.value9,
    this.value10,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple10 &&
          value1 == other.value1 &&
          value2 == other.value2 &&
          value3 == other.value3 &&
          value4 == other.value4 &&
          value5 == other.value5 &&
          value6 == other.value6 &&
          value7 == other.value7 &&
          value8 == other.value8 &&
          value9 == other.value9 &&
          value10 == other.value10);

  @override
  int get hashCode =>
      value1.hashCode ^
      value2.hashCode ^
      value3.hashCode ^
      value4.hashCode ^
      value5.hashCode ^
      value6.hashCode ^
      value7.hashCode ^
      value8.hashCode ^
      value9.hashCode ^
      value10.hashCode;

  @override
  String toString() =>
      '($value1, $value2, $value3, $value4, $value5, $value6, $value7, $value8, $value9, $value10)';

  Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> copyWith({
    T1? value1,
    T2? value2,
    T3? value3,
    T4? value4,
    T5? value5,
    T6? value6,
    T7? value7,
    T8? value8,
    T9? value9,
    T10? value10,
  }) {
    return Tuple10(
      value1 ?? this.value1,
      value2 ?? this.value2,
      value3 ?? this.value3,
      value4 ?? this.value4,
      value5 ?? this.value5,
      value6 ?? this.value6,
      value7 ?? this.value7,
      value8 ?? this.value8,
      value9 ?? this.value9,
      value10 ?? this.value10,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': value1,
      'value2': value2,
      'value3': value3,
      'value4': value4,
      'value5': value5,
      'value6': value6,
      'value7': value7,
      'value8': value8,
      'value9': value9,
      'value10':value10,
    };
  }

  factory Tuple10.fromMap(Map<String, dynamic> map) {
    return Tuple10(
      map['value1'] as T1,
      map['value2'] as T2,
      map['value3'] as T3,
      map['value4'] as T4,
      map['value5'] as T5,
      map['value6'] as T6,
      map['value7'] as T7,
      map['value8'] as T8,
      map['value9'] as T9,
      map['value10'] as T10,
    );
  }

//</editor-fold>
}

class Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11> extends ParamTuple {
  final T1 value1;
  final T2 value2;
  final T3 value3;
  final T4 value4;
  final T5 value5;
  final T6 value6;
  final T7 value7;
  final T8 value8;
  final T9 value9;
  final T10 value10;
  final T11 value11;

  R apply<R>(Function11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, R> f) =>
      f(value1, value2, value3, value4, value5, value6, value7, value8, value9,
          value10, value11);

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  const Tuple11(
    this.value1,
    this.value2,
    this.value3,
    this.value4,
    this.value5,
    this.value6,
    this.value7,
    this.value8,
    this.value9,
    this.value10,
    this.value11,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple11 &&
          value1 == other.value1 &&
          value2 == other.value2 &&
          value3 == other.value3 &&
          value4 == other.value4 &&
          value5 == other.value5 &&
          value6 == other.value6 &&
          value7 == other.value7 &&
          value8 == other.value8 &&
          value9 == other.value9 &&
          value10 == other.value10 &&
          value11 == other.value11);

  @override
  int get hashCode =>
      value1.hashCode ^
      value2.hashCode ^
      value3.hashCode ^
      value4.hashCode ^
      value5.hashCode ^
      value6.hashCode ^
      value7.hashCode ^
      value8.hashCode ^
      value9.hashCode ^
      value10.hashCode ^
      value11.hashCode;

  @override
  String toString() =>
      '($value1, $value2, $value3, $value4, $value5, $value6, $value7, $value8, $value9, $value10, $value11)';

  Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11> copyWith({
    T1? value1,
    T2? value2,
    T3? value3,
    T4? value4,
    T5? value5,
    T6? value6,
    T7? value7,
    T8? value8,
    T9? value9,
    T10? value10,
    T11? value11,
  }) {
    return Tuple11(
      value1 ?? this.value1,
      value2 ?? this.value2,
      value3 ?? this.value3,
      value4 ?? this.value4,
      value5 ?? this.value5,
      value6 ?? this.value6,
      value7 ?? this.value7,
      value8 ?? this.value8,
      value9 ?? this.value9,
      value10 ?? this.value10,
      value11 ?? this.value11,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': value1,
      'value2': value2,
      'value3': value3,
      'value4': value4,
      'value5': value5,
      'value6': value6,
      'value7': value7,
      'value8': value8,
      'value9': value9,
      'value10':value10,
      'value11':value11,
    };
  }

  factory Tuple11.fromMap(Map<String, dynamic> map) {
    return Tuple11(
      map['value1'] as T1,
      map['value2'] as T2,
      map['value3'] as T3,
      map['value4'] as T4,
      map['value5'] as T5,
      map['value6'] as T6,
      map['value7'] as T7,
      map['value8'] as T8,
      map['value9'] as T9,
      map['value10'] as T10,
      map['value11'] as T11,
    );
  }

//</editor-fold>
}

class Tuple12<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12>
    extends ParamTuple {
  final T1 value1;
  final T2 value2;
  final T3 value3;
  final T4 value4;
  final T5 value5;
  final T6 value6;
  final T7 value7;
  final T8 value8;
  final T9 value9;
  final T10 value10;
  final T11 value11;
  final T12 value12;

  R apply<R>(
          Function12<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, R> f) =>
      f(value1, value2, value3, value4, value5, value6, value7, value8, value9,
          value10, value11, value12);

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  const Tuple12(
    this.value1,
    this.value2,
    this.value3,
    this.value4,
    this.value5,
    this.value6,
    this.value7,
    this.value8,
    this.value9,
    this.value10,
    this.value11,
    this.value12,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple12 &&
          value1 == other.value1 &&
          value2 == other.value2 &&
          value3 == other.value3 &&
          value4 == other.value4 &&
          value5 == other.value5 &&
          value6 == other.value6 &&
          value7 == other.value7 &&
          value8 == other.value8 &&
          value9 == other.value9 &&
          value10 == other.value10 &&
          value11 == other.value11 &&
          value12 == other.value12);

  @override
  int get hashCode =>
      value1.hashCode ^
      value2.hashCode ^
      value3.hashCode ^
      value4.hashCode ^
      value5.hashCode ^
      value6.hashCode ^
      value7.hashCode ^
      value8.hashCode ^
      value9.hashCode ^
      value10.hashCode ^
      value11.hashCode ^
      value12.hashCode;

  @override
  String toString() =>
      '($value1, $value2, $value3, $value4, $value5, $value6, $value7, $value8, $value9, $value10, $value11, $value12)';

  Tuple12<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12> copyWith({
    T1? value1,
    T2? value2,
    T3? value3,
    T4? value4,
    T5? value5,
    T6? value6,
    T7? value7,
    T8? value8,
    T9? value9,
    T10? value10,
    T11? value11,
    T12? value12,
  }) {
    return Tuple12(
      value1 ?? this.value1,
      value2 ?? this.value2,
      value3 ?? this.value3,
      value4 ?? this.value4,
      value5 ?? this.value5,
      value6 ?? this.value6,
      value7 ?? this.value7,
      value8 ?? this.value8,
      value9 ?? this.value9,
      value10 ?? this.value10,
      value11 ?? this.value11,
      value12 ?? this.value12,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': value1,
      'value2': value2,
      'value3': value3,
      'value4': value4,
      'value5': value5,
      'value6': value6,
      'value7': value7,
      'value8': value8,
      'value9': value9,
      'value10':value10,
      'value11':value11,
      'value12':value12,
    };
  }

  factory Tuple12.fromMap(Map<String, dynamic> map) {
    return Tuple12(
      map['value1'] as T1,
      map['value2'] as T2,
      map['value3'] as T3,
      map['value4'] as T4,
      map['value5'] as T5,
      map['value6'] as T6,
      map['value7'] as T7,
      map['value8'] as T8,
      map['value9'] as T9,
      map['value10'] as T10,
      map['value11'] as T11,
      map['value12'] as T12,
    );
  }

//</editor-fold>
}

class Tuple13<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13>
    extends ParamTuple {
  final T1 value1;
  final T2 value2;
  final T3 value3;
  final T4 value4;
  final T5 value5;
  final T6 value6;
  final T7 value7;
  final T8 value8;
  final T9 value9;
  final T10 value10;
  final T11 value11;
  final T12 value12;
  final T13 value13;

  R apply<R>(
          Function13<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, R>
              f) =>
      f(value1, value2, value3, value4, value5, value6, value7, value8, value9,
          value10, value11, value12, value13);

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  const Tuple13(
    this.value1,
    this.value2,
    this.value3,
    this.value4,
    this.value5,
    this.value6,
    this.value7,
    this.value8,
    this.value9,
    this.value10,
    this.value11,
    this.value12,
    this.value13,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple13 &&
          value1 == other.value1 &&
          value2 == other.value2 &&
          value3 == other.value3 &&
          value4 == other.value4 &&
          value5 == other.value5 &&
          value6 == other.value6 &&
          value7 == other.value7 &&
          value8 == other.value8 &&
          value9 == other.value9 &&
          value10 == other.value10 &&
          value11 == other.value11 &&
          value12 == other.value12 &&
          value13 == other.value13);

  @override
  int get hashCode =>
      value1.hashCode ^
      value2.hashCode ^
      value3.hashCode ^
      value4.hashCode ^
      value5.hashCode ^
      value6.hashCode ^
      value7.hashCode ^
      value8.hashCode ^
      value9.hashCode ^
      value10.hashCode ^
      value11.hashCode ^
      value12.hashCode ^
      value13.hashCode;

  @override
  String toString() =>
      '($value1, $value2, $value3, $value4, $value5, $value6, $value7, $value8, $value9, $value10, $value11, $value12, $value13)';

  Tuple13<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13> copyWith({
    T1? value1,
    T2? value2,
    T3? value3,
    T4? value4,
    T5? value5,
    T6? value6,
    T7? value7,
    T8? value8,
    T9? value9,
    T10? value10,
    T11? value11,
    T12? value12,
    T13? value13,
  }) {
    return Tuple13(
      value1 ?? this.value1,
      value2 ?? this.value2,
      value3 ?? this.value3,
      value4 ?? this.value4,
      value5 ?? this.value5,
      value6 ?? this.value6,
      value7 ?? this.value7,
      value8 ?? this.value8,
      value9 ?? this.value9,
      value10 ?? this.value10,
      value11 ?? this.value11,
      value12 ?? this.value12,
      value13 ?? this.value13,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': value1,
      'value2': value2,
      'value3': value3,
      'value4': value4,
      'value5': value5,
      'value6': value6,
      'value7': value7,
      'value8': value8,
      'value9': value9,
      'value10':value10,
      'value11':value11,
      'value12':value12,
      'value13':value13,
    };
  }

  factory Tuple13.fromMap(Map<String, dynamic> map) {
    return Tuple13(
      map['value1'] as T1,
      map['value2'] as T2,
      map['value3'] as T3,
      map['value4'] as T4,
      map['value5'] as T5,
      map['value6'] as T6,
      map['value7'] as T7,
      map['value8'] as T8,
      map['value9'] as T9,
      map['value10'] as T10,
      map['value11'] as T11,
      map['value12'] as T12,
      map['value13'] as T13,
    );
  }

//</editor-fold>
}

class Tuple14<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14>
    extends ParamTuple {
  final T1 value1;
  final T2 value2;
  final T3 value3;
  final T4 value4;
  final T5 value5;
  final T6 value6;
  final T7 value7;
  final T8 value8;
  final T9 value9;
  final T10 value10;
  final T11 value11;
  final T12 value12;
  final T13 value13;
  final T14 value14;

  R apply<R>(
          Function14<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13,
                  T14, R>
              f) =>
      f(value1, value2, value3, value4, value5, value6, value7, value8, value9,
          value10, value11, value12, value13, value14);

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  const Tuple14(
    this.value1,
    this.value2,
    this.value3,
    this.value4,
    this.value5,
    this.value6,
    this.value7,
    this.value8,
    this.value9,
    this.value10,
    this.value11,
    this.value12,
    this.value13,
    this.value14,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple14 &&
          value1 == other.value1 &&
          value2 == other.value2 &&
          value3 == other.value3 &&
          value4 == other.value4 &&
          value5 == other.value5 &&
          value6 == other.value6 &&
          value7 == other.value7 &&
          value8 == other.value8 &&
          value9 == other.value9 &&
          value10 == other.value10 &&
          value11 == other.value11 &&
          value12 == other.value12 &&
          value13 == other.value13 &&
          value14 == other.value14);

  @override
  int get hashCode =>
      value1.hashCode ^
      value2.hashCode ^
      value3.hashCode ^
      value4.hashCode ^
      value5.hashCode ^
      value6.hashCode ^
      value7.hashCode ^
      value8.hashCode ^
      value9.hashCode ^
      value10.hashCode ^
      value11.hashCode ^
      value12.hashCode ^
      value13.hashCode ^
      value14.hashCode;

  @override
  String toString() =>
      '($value1, $value2, $value3, $value4, $value5, $value6, $value7, $value8, $value9, $value10, $value11, $value12, $value13, $value14)';

  Tuple14<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14>
      copyWith({
    T1? value1,
    T2? value2,
    T3? value3,
    T4? value4,
    T5? value5,
    T6? value6,
    T7? value7,
    T8? value8,
    T9? value9,
    T10? value10,
    T11? value11,
    T12? value12,
    T13? value13,
    T14? value14,
  }) {
    return Tuple14(
      value1 ?? this.value1,
      value2 ?? this.value2,
      value3 ?? this.value3,
      value4 ?? this.value4,
      value5 ?? this.value5,
      value6 ?? this.value6,
      value7 ?? this.value7,
      value8 ?? this.value8,
      value9 ?? this.value9,
      value10 ?? this.value10,
      value11 ?? this.value11,
      value12 ?? this.value12,
      value13 ?? this.value13,
      value14 ?? this.value14,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': value1,
      'value2': value2,
      'value3': value3,
      'value4': value4,
      'value5': value5,
      'value6': value6,
      'value7': value7,
      'value8': value8,
      'value9': value9,
      'value10':value10,
      'value11':value11,
      'value12':value12,
      'value13':value13,
      'value14':value14,
    };
  }

  factory Tuple14.fromMap(Map<String, dynamic> map) {
    return Tuple14(
      map['value1'] as T1,
      map['value2'] as T2,
      map['value3'] as T3,
      map['value4'] as T4,
      map['value5'] as T5,
      map['value6'] as T6,
      map['value7'] as T7,
      map['value8'] as T8,
      map['value9'] as T9,
      map['value10'] as T10,
      map['value11'] as T11,
      map['value12'] as T12,
      map['value13'] as T13,
      map['value14'] as T14,
    );
  }

//</editor-fold>
}

class Tuple15<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15>
    extends ParamTuple {
  final T1 value1;
  final T2 value2;
  final T3 value3;
  final T4 value4;
  final T5 value5;
  final T6 value6;
  final T7 value7;
  final T8 value8;
  final T9 value9;
  final T10 value10;
  final T11 value11;
  final T12 value12;
  final T13 value13;
  final T14 value14;
  final T15 value15;

  R apply<R>(
          Function15<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13,
                  T14, T15, R>
              f) =>
      f(value1, value2, value3, value4, value5, value6, value7, value8, value9,
          value10, value11, value12, value13, value14, value15);

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  const Tuple15(
    this.value1,
    this.value2,
    this.value3,
    this.value4,
    this.value5,
    this.value6,
    this.value7,
    this.value8,
    this.value9,
    this.value10,
    this.value11,
    this.value12,
    this.value13,
    this.value14,
    this.value15,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple15 &&
          value1 == other.value1 &&
          value2 == other.value2 &&
          value3 == other.value3 &&
          value4 == other.value4 &&
          value5 == other.value5 &&
          value6 == other.value6 &&
          value7 == other.value7 &&
          value8 == other.value8 &&
          value9 == other.value9 &&
          value10 == other.value10 &&
          value11 == other.value11 &&
          value12 == other.value12 &&
          value13 == other.value13 &&
          value14 == other.value14 &&
          value15 == other.value15);

  @override
  int get hashCode =>
      value1.hashCode ^
      value2.hashCode ^
      value3.hashCode ^
      value4.hashCode ^
      value5.hashCode ^
      value6.hashCode ^
      value7.hashCode ^
      value8.hashCode ^
      value9.hashCode ^
      value10.hashCode ^
      value11.hashCode ^
      value12.hashCode ^
      value13.hashCode ^
      value14.hashCode ^
      value15.hashCode;

  @override
  String toString() =>
      '($value1, $value2, $value3, $value4, $value5, $value6, $value7, $value8, $value9, $value10, $value11, $value12, $value13, $value14, $value15)';

  Tuple15<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15>
      copyWith({
    T1? value1,
    T2? value2,
    T3? value3,
    T4? value4,
    T5? value5,
    T6? value6,
    T7? value7,
    T8? value8,
    T9? value9,
    T10? value10,
    T11? value11,
    T12? value12,
    T13? value13,
    T14? value14,
    T15? value15,
  }) {
    return Tuple15(
      value1 ?? this.value1,
      value2 ?? this.value2,
      value3 ?? this.value3,
      value4 ?? this.value4,
      value5 ?? this.value5,
      value6 ?? this.value6,
      value7 ?? this.value7,
      value8 ?? this.value8,
      value9 ?? this.value9,
      value10 ?? this.value10,
      value11 ?? this.value11,
      value12 ?? this.value12,
      value13 ?? this.value13,
      value14 ?? this.value14,
      value15 ?? this.value15,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': value1,
      'value2': value2,
      'value3': value3,
      'value4': value4,
      'value5': value5,
      'value6': value6,
      'value7': value7,
      'value8': value8,
      'value9': value9,
      'value10':value10,
      'value11':value11,
      'value12':value12,
      'value13':value13,
      'value14':value14,
      'value15':value15,
    };
  }

  factory Tuple15.fromMap(Map<String, dynamic> map) {
    return Tuple15(
      map['value1'] as T1,
      map['value2'] as T2,
      map['value3'] as T3,
      map['value4'] as T4,
      map['value5'] as T5,
      map['value6'] as T6,
      map['value7'] as T7,
      map['value8'] as T8,
      map['value9'] as T9,
      map['value10'] as T10,
      map['value11'] as T11,
      map['value12'] as T12,
      map['value13'] as T13,
      map['value14'] as T14,
      map['value15'] as T15,
    );
  }

//</editor-fold>
}

class Tuple16<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15,
    T16> extends ParamTuple {
  final T1 value1;
  final T2 value2;
  final T3 value3;
  final T4 value4;
  final T5 value5;
  final T6 value6;
  final T7 value7;
  final T8 value8;
  final T9 value9;
  final T10 value10;
  final T11 value11;
  final T12 value12;
  final T13 value13;
  final T14 value14;
  final T15 value15;
  final T16 value16;

  R apply<R>(
          Function16<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13,
                  T14, T15, T16, R>
              f) =>
      f(value1, value2, value3, value4, value5, value6, value7, value8, value9,
          value10, value11, value12, value13, value14, value15, value16);

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  const Tuple16(
    this.value1,
    this.value2,
    this.value3,
    this.value4,
    this.value5,
    this.value6,
    this.value7,
    this.value8,
    this.value9,
    this.value10,
    this.value11,
    this.value12,
    this.value13,
    this.value14,
    this.value15,
    this.value16,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple16 &&
          value1 == other.value1 &&
          value2 == other.value2 &&
          value3 == other.value3 &&
          value4 == other.value4 &&
          value5 == other.value5 &&
          value6 == other.value6 &&
          value7 == other.value7 &&
          value8 == other.value8 &&
          value9 == other.value9 &&
          value10 == other.value10 &&
          value11 == other.value11 &&
          value12 == other.value12 &&
          value13 == other.value13 &&
          value14 == other.value14 &&
          value15 == other.value15 &&
          value16 == other.value16);

  @override
  int get hashCode =>
      value1.hashCode ^
      value2.hashCode ^
      value3.hashCode ^
      value4.hashCode ^
      value5.hashCode ^
      value6.hashCode ^
      value7.hashCode ^
      value8.hashCode ^
      value9.hashCode ^
      value10.hashCode ^
      value11.hashCode ^
      value12.hashCode ^
      value13.hashCode ^
      value14.hashCode ^
      value15.hashCode ^
      value16.hashCode;

  @override
  String toString() =>
      '($value1, $value2, $value3, $value4, $value5, $value6, $value7, $value8, $value9, $value10, $value11, $value12, $value13, $value14, $value15, $value16)';

  Tuple16<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16>
      copyWith({
    T1? value1,
    T2? value2,
    T3? value3,
    T4? value4,
    T5? value5,
    T6? value6,
    T7? value7,
    T8? value8,
    T9? value9,
    T10? value10,
    T11? value11,
    T12? value12,
    T13? value13,
    T14? value14,
    T15? value15,
    T16? value16,
  }) {
    return Tuple16(
      value1 ?? this.value1,
      value2 ?? this.value2,
      value3 ?? this.value3,
      value4 ?? this.value4,
      value5 ?? this.value5,
      value6 ?? this.value6,
      value7 ?? this.value7,
      value8 ?? this.value8,
      value9 ?? this.value9,
      value10 ?? this.value10,
      value11 ?? this.value11,
      value12 ?? this.value12,
      value13 ?? this.value13,
      value14 ?? this.value14,
      value15 ?? this.value15,
      value16 ?? this.value16,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': value1,
      'value2': value2,
      'value3': value3,
      'value4': value4,
      'value5': value5,
      'value6': value6,
      'value7': value7,
      'value8': value8,
      'value9': value9,
      'value10':value10,
      'value11':value11,
      'value12':value12,
      'value13':value13,
      'value14':value14,
      'value15':value15,
      'value16':value16,
    };
  }

  factory Tuple16.fromMap(Map<String, dynamic> map) {
    return Tuple16(
      map['value1'] as T1,
      map['value2'] as T2,
      map['value3'] as T3,
      map['value4'] as T4,
      map['value5'] as T5,
      map['value6'] as T6,
      map['value7'] as T7,
      map['value8'] as T8,
      map['value9'] as T9,
      map['value10'] as T10,
      map['value11'] as T11,
      map['value12'] as T12,
      map['value13'] as T13,
      map['value14'] as T14,
      map['value15'] as T15,
      map['value16'] as T16,
    );
  }

//</editor-fold>
}

class Tuple17<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15,
    T16, T17> extends ParamTuple {
  final T1 value1;
  final T2 value2;
  final T3 value3;
  final T4 value4;
  final T5 value5;
  final T6 value6;
  final T7 value7;
  final T8 value8;
  final T9 value9;
  final T10 value10;
  final T11 value11;
  final T12 value12;
  final T13 value13;
  final T14 value14;
  final T15 value15;
  final T16 value16;
  final T17 value17;

  R apply<R>(
          Function17<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13,
                  T14, T15, T16, T17, R>
              f) =>
      f(
          value1,
          value2,
          value3,
          value4,
          value5,
          value6,
          value7,
          value8,
          value9,
          value10,
          value11,
          value12,
          value13,
          value14,
          value15,
          value16,
          value17);

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  const Tuple17(
    this.value1,
    this.value2,
    this.value3,
    this.value4,
    this.value5,
    this.value6,
    this.value7,
    this.value8,
    this.value9,
    this.value10,
    this.value11,
    this.value12,
    this.value13,
    this.value14,
    this.value15,
    this.value16,
    this.value17,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple17 &&
          value1 == other.value1 &&
          value2 == other.value2 &&
          value3 == other.value3 &&
          value4 == other.value4 &&
          value5 == other.value5 &&
          value6 == other.value6 &&
          value7 == other.value7 &&
          value8 == other.value8 &&
          value9 == other.value9 &&
          value10 == other.value10 &&
          value11 == other.value11 &&
          value12 == other.value12 &&
          value13 == other.value13 &&
          value14 == other.value14 &&
          value15 == other.value15 &&
          value16 == other.value16 &&
          value17 == other.value17);

  @override
  int get hashCode =>
      value1.hashCode ^
      value2.hashCode ^
      value3.hashCode ^
      value4.hashCode ^
      value5.hashCode ^
      value6.hashCode ^
      value7.hashCode ^
      value8.hashCode ^
      value9.hashCode ^
      value10.hashCode ^
      value11.hashCode ^
      value12.hashCode ^
      value13.hashCode ^
      value14.hashCode ^
      value15.hashCode ^
      value16.hashCode ^
      value17.hashCode;

  @override
  String toString() =>
      '($value1, $value2, $value3, $value4, $value5, $value6, $value7, $value8, $value9, $value10, $value11, $value12, $value13, $value14, $value15, $value16, $value17)';

  Tuple17<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16,
      T17> copyWith({
    T1? value1,
    T2? value2,
    T3? value3,
    T4? value4,
    T5? value5,
    T6? value6,
    T7? value7,
    T8? value8,
    T9? value9,
    T10? value10,
    T11? value11,
    T12? value12,
    T13? value13,
    T14? value14,
    T15? value15,
    T16? value16,
    T17? value17,
  }) {
    return Tuple17(
      value1 ?? this.value1,
      value2 ?? this.value2,
      value3 ?? this.value3,
      value4 ?? this.value4,
      value5 ?? this.value5,
      value6 ?? this.value6,
      value7 ?? this.value7,
      value8 ?? this.value8,
      value9 ?? this.value9,
      value10 ?? this.value10,
      value11 ?? this.value11,
      value12 ?? this.value12,
      value13 ?? this.value13,
      value14 ?? this.value14,
      value15 ?? this.value15,
      value16 ?? this.value16,
      value17 ?? this.value17,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': value1,
      'value2': value2,
      'value3': value3,
      'value4': value4,
      'value5': value5,
      'value6': value6,
      'value7': value7,
      'value8': value8,
      'value9': value9,
      'value10':value10,
      'value11':value11,
      'value12':value12,
      'value13':value13,
      'value14':value14,
      'value15':value15,
      'value16':value16,
      'value17':value17,
    };
  }

  factory Tuple17.fromMap(Map<String, dynamic> map) {
    return Tuple17(
      map['value1'] as T1,
      map['value2'] as T2,
      map['value3'] as T3,
      map['value4'] as T4,
      map['value5'] as T5,
      map['value6'] as T6,
      map['value7'] as T7,
      map['value8'] as T8,
      map['value9'] as T9,
      map['value10'] as T10,
      map['value11'] as T11,
      map['value12'] as T12,
      map['value13'] as T13,
      map['value14'] as T14,
      map['value15'] as T15,
      map['value16'] as T16,
      map['value17'] as T17,
    );
  }

//</editor-fold>
}

class Tuple18<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15,
    T16, T17, T18> extends ParamTuple {
  final T1 value1;
  final T2 value2;
  final T3 value3;
  final T4 value4;
  final T5 value5;
  final T6 value6;
  final T7 value7;
  final T8 value8;
  final T9 value9;
  final T10 value10;
  final T11 value11;
  final T12 value12;
  final T13 value13;
  final T14 value14;
  final T15 value15;
  final T16 value16;
  final T17 value17;
  final T18 value18;

  R apply<R>(
          Function18<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13,
                  T14, T15, T16, T17, T18, R>
              f) =>
      f(
          value1,
          value2,
          value3,
          value4,
          value5,
          value6,
          value7,
          value8,
          value9,
          value10,
          value11,
          value12,
          value13,
          value14,
          value15,
          value16,
          value17,
          value18);

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  const Tuple18(
    this.value1,
    this.value2,
    this.value3,
    this.value4,
    this.value5,
    this.value6,
    this.value7,
    this.value8,
    this.value9,
    this.value10,
    this.value11,
    this.value12,
    this.value13,
    this.value14,
    this.value15,
    this.value16,
    this.value17,
    this.value18,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple18 &&
          value1 == other.value1 &&
          value2 == other.value2 &&
          value3 == other.value3 &&
          value4 == other.value4 &&
          value5 == other.value5 &&
          value6 == other.value6 &&
          value7 == other.value7 &&
          value8 == other.value8 &&
          value9 == other.value9 &&
          value10 == other.value10 &&
          value11 == other.value11 &&
          value12 == other.value12 &&
          value13 == other.value13 &&
          value14 == other.value14 &&
          value15 == other.value15 &&
          value16 == other.value16 &&
          value17 == other.value17 &&
          value18 == other.value18);

  @override
  int get hashCode =>
      value1.hashCode ^
      value2.hashCode ^
      value3.hashCode ^
      value4.hashCode ^
      value5.hashCode ^
      value6.hashCode ^
      value7.hashCode ^
      value8.hashCode ^
      value9.hashCode ^
      value10.hashCode ^
      value11.hashCode ^
      value12.hashCode ^
      value13.hashCode ^
      value14.hashCode ^
      value15.hashCode ^
      value16.hashCode ^
      value17.hashCode ^
      value18.hashCode;

  @override
  String toString() =>
      '($value1, $value2, $value3, $value4, $value5, $value6, $value7, $value8, $value9, $value10, $value11, $value12, $value13, $value14, $value15, $value16, $value17, $value18)';

  Tuple18<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16,
      T17, T18> copyWith({
    T1? value1,
    T2? value2,
    T3? value3,
    T4? value4,
    T5? value5,
    T6? value6,
    T7? value7,
    T8? value8,
    T9? value9,
    T10? value10,
    T11? value11,
    T12? value12,
    T13? value13,
    T14? value14,
    T15? value15,
    T16? value16,
    T17? value17,
    T18? value18,
  }) {
    return Tuple18(
      value1 ?? this.value1,
      value2 ?? this.value2,
      value3 ?? this.value3,
      value4 ?? this.value4,
      value5 ?? this.value5,
      value6 ?? this.value6,
      value7 ?? this.value7,
      value8 ?? this.value8,
      value9 ?? this.value9,
      value10 ?? this.value10,
      value11 ?? this.value11,
      value12 ?? this.value12,
      value13 ?? this.value13,
      value14 ?? this.value14,
      value15 ?? this.value15,
      value16 ?? this.value16,
      value17 ?? this.value17,
      value18 ?? this.value18,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': value1,
      'value2': value2,
      'value3': value3,
      'value4': value4,
      'value5': value5,
      'value6': value6,
      'value7': value7,
      'value8': value8,
      'value9': value9,
      'value10':value10,
      'value11':value11,
      'value12':value12,
      'value13':value13,
      'value14':value14,
      'value15':value15,
      'value16':value16,
      'value17':value17,
      'value18':value18,
    };
  }

  factory Tuple18.fromMap(Map<String, dynamic> map) {
    return Tuple18(
      map['value1'] as T1,
      map['value2'] as T2,
      map['value3'] as T3,
      map['value4'] as T4,
      map['value5'] as T5,
      map['value6'] as T6,
      map['value7'] as T7,
      map['value8'] as T8,
      map['value9'] as T9,
      map['value10'] as T10,
      map['value11'] as T11,
      map['value12'] as T12,
      map['value13'] as T13,
      map['value14'] as T14,
      map['value15'] as T15,
      map['value16'] as T16,
      map['value17'] as T17,
      map['value18'] as T18,
    );
  }

//</editor-fold>
}

class Tuple19<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15,
    T16, T17, T18, T19> extends ParamTuple {
  final T1 value1;
  final T2 value2;
  final T3 value3;
  final T4 value4;
  final T5 value5;
  final T6 value6;
  final T7 value7;
  final T8 value8;
  final T9 value9;
  final T10 value10;
  final T11 value11;
  final T12 value12;
  final T13 value13;
  final T14 value14;
  final T15 value15;
  final T16 value16;
  final T17 value17;
  final T18 value18;
  final T19 value19;

  R apply<R>(
          Function19<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13,
                  T14, T15, T16, T17, T18, T19, R>
              f) =>
      f(
          value1,
          value2,
          value3,
          value4,
          value5,
          value6,
          value7,
          value8,
          value9,
          value10,
          value11,
          value12,
          value13,
          value14,
          value15,
          value16,
          value17,
          value18,
          value19);

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  const Tuple19(
    this.value1,
    this.value2,
    this.value3,
    this.value4,
    this.value5,
    this.value6,
    this.value7,
    this.value8,
    this.value9,
    this.value10,
    this.value11,
    this.value12,
    this.value13,
    this.value14,
    this.value15,
    this.value16,
    this.value17,
    this.value18,
    this.value19,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple19 &&
          value1 == other.value1 &&
          value2 == other.value2 &&
          value3 == other.value3 &&
          value4 == other.value4 &&
          value5 == other.value5 &&
          value6 == other.value6 &&
          value7 == other.value7 &&
          value8 == other.value8 &&
          value9 == other.value9 &&
          value10 == other.value10 &&
          value11 == other.value11 &&
          value12 == other.value12 &&
          value13 == other.value13 &&
          value14 == other.value14 &&
          value15 == other.value15 &&
          value16 == other.value16 &&
          value17 == other.value17 &&
          value18 == other.value18 &&
          value19 == other.value19);

  @override
  int get hashCode =>
      value1.hashCode ^
      value2.hashCode ^
      value3.hashCode ^
      value4.hashCode ^
      value5.hashCode ^
      value6.hashCode ^
      value7.hashCode ^
      value8.hashCode ^
      value9.hashCode ^
      value10.hashCode ^
      value11.hashCode ^
      value12.hashCode ^
      value13.hashCode ^
      value14.hashCode ^
      value15.hashCode ^
      value16.hashCode ^
      value17.hashCode ^
      value18.hashCode ^
      value19.hashCode;

  @override
  String toString() =>
      '($value1, $value2, $value3, $value4, $value5, $value6, $value7, $value8, $value9, $value10, $value11, $value12, $value13, $value14, $value15, $value16, $value17, $value18, $value19)';

  Tuple19<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16,
      T17, T18, T19> copyWith({
    T1? value1,
    T2? value2,
    T3? value3,
    T4? value4,
    T5? value5,
    T6? value6,
    T7? value7,
    T8? value8,
    T9? value9,
    T10? value10,
    T11? value11,
    T12? value12,
    T13? value13,
    T14? value14,
    T15? value15,
    T16? value16,
    T17? value17,
    T18? value18,
    T19? value19,
  }) {
    return Tuple19(
      value1 ?? this.value1,
      value2 ?? this.value2,
      value3 ?? this.value3,
      value4 ?? this.value4,
      value5 ?? this.value5,
      value6 ?? this.value6,
      value7 ?? this.value7,
      value8 ?? this.value8,
      value9 ?? this.value9,
      value10 ?? this.value10,
      value11 ?? this.value11,
      value12 ?? this.value12,
      value13 ?? this.value13,
      value14 ?? this.value14,
      value15 ?? this.value15,
      value16 ?? this.value16,
      value17 ?? this.value17,
      value18 ?? this.value18,
      value19 ?? this.value19,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': value1,
      'value2': value2,
      'value3': value3,
      'value4': value4,
      'value5': value5,
      'value6': value6,
      'value7': value7,
      'value8': value8,
      'value9': value9,
      'value10':value10,
      'value11':value11,
      'value12':value12,
      'value13':value13,
      'value14':value14,
      'value15':value15,
      'value16':value16,
      'value17':value17,
      'value18':value18,
      'value19':value19,
    };
  }

  factory Tuple19.fromMap(Map<String, dynamic> map) {
    return Tuple19(
      map['value1'] as T1,
      map['value2'] as T2,
      map['value3'] as T3,
      map['value4'] as T4,
      map['value5'] as T5,
      map['value6'] as T6,
      map['value7'] as T7,
      map['value8'] as T8,
      map['value9'] as T9,
      map['value10'] as T10,
      map['value11'] as T11,
      map['value12'] as T12,
      map['value13'] as T13,
      map['value14'] as T14,
      map['value15'] as T15,
      map['value16'] as T16,
      map['value17'] as T17,
      map['value18'] as T18,
      map['value19'] as T19,
    );
  }

//</editor-fold>
}

class Tuple20<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15,
    T16, T17, T18, T19, T20> extends ParamTuple {
  final T1 value1;
  final T2 value2;
  final T3 value3;
  final T4 value4;
  final T5 value5;
  final T6 value6;
  final T7 value7;
  final T8 value8;
  final T9 value9;
  final T10 value10;
  final T11 value11;
  final T12 value12;
  final T13 value13;
  final T14 value14;
  final T15 value15;
  final T16 value16;
  final T17 value17;
  final T18 value18;
  final T19 value19;
  final T20 value20;

  R apply<R>(
          Function20<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13,
                  T14, T15, T16, T17, T18, T19, T20, R>
              f) =>
      f(
          value1,
          value2,
          value3,
          value4,
          value5,
          value6,
          value7,
          value8,
          value9,
          value10,
          value11,
          value12,
          value13,
          value14,
          value15,
          value16,
          value17,
          value18,
          value19,
          value20);

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  const Tuple20(
    this.value1,
    this.value2,
    this.value3,
    this.value4,
    this.value5,
    this.value6,
    this.value7,
    this.value8,
    this.value9,
    this.value10,
    this.value11,
    this.value12,
    this.value13,
    this.value14,
    this.value15,
    this.value16,
    this.value17,
    this.value18,
    this.value19,
    this.value20,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tuple20 &&
          value1 == other.value1 &&
          value2 == other.value2 &&
          value3 == other.value3 &&
          value4 == other.value4 &&
          value5 == other.value5 &&
          value6 == other.value6 &&
          value7 == other.value7 &&
          value8 == other.value8 &&
          value9 == other.value9 &&
          value10 == other.value10 &&
          value11 == other.value11 &&
          value12 == other.value12 &&
          value13 == other.value13 &&
          value14 == other.value14 &&
          value15 == other.value15 &&
          value16 == other.value16 &&
          value17 == other.value17 &&
          value18 == other.value18 &&
          value19 == other.value19 &&
          value20 == other.value20);

  @override
  int get hashCode =>
      value1.hashCode ^
      value2.hashCode ^
      value3.hashCode ^
      value4.hashCode ^
      value5.hashCode ^
      value6.hashCode ^
      value7.hashCode ^
      value8.hashCode ^
      value9.hashCode ^
      value10.hashCode ^
      value11.hashCode ^
      value12.hashCode ^
      value13.hashCode ^
      value14.hashCode ^
      value15.hashCode ^
      value16.hashCode ^
      value17.hashCode ^
      value18.hashCode ^
      value19.hashCode ^
      value20.hashCode;

  @override
  String toString() =>
      '($value1, $value2, $value3, $value4, $value5, $value6, $value7, $value8, $value9, $value10, $value11, $value12, $value13, $value14, $value15, $value16, $value17, $value18, $value19, $value20)';

  Tuple20<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16,
      T17, T18, T19, T20> copyWith({
    T1? value1,
    T2? value2,
    T3? value3,
    T4? value4,
    T5? value5,
    T6? value6,
    T7? value7,
    T8? value8,
    T9? value9,
    T10? value10,
    T11? value11,
    T12? value12,
    T13? value13,
    T14? value14,
    T15? value15,
    T16? value16,
    T17? value17,
    T18? value18,
    T19? value19,
    T20? value20,
  }) {
    return Tuple20(
      value1 ?? this.value1,
      value2 ?? this.value2,
      value3 ?? this.value3,
      value4 ?? this.value4,
      value5 ?? this.value5,
      value6 ?? this.value6,
      value7 ?? this.value7,
      value8 ?? this.value8,
      value9 ?? this.value9,
      value10 ?? this.value10,
      value11 ?? this.value11,
      value12 ?? this.value12,
      value13 ?? this.value13,
      value14 ?? this.value14,
      value15 ?? this.value15,
      value16 ?? this.value16,
      value17 ?? this.value17,
      value18 ?? this.value18,
      value19 ?? this.value19,
      value20 ?? this.value20,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value1': value1,
      'value2': value2,
      'value3': value3,
      'value4': value4,
      'value5': value5,
      'value6': value6,
      'value7': value7,
      'value8': value8,
      'value9': value9,
      'value10':value10,
      'value11':value11,
      'value12':value12,
      'value13':value13,
      'value14':value14,
      'value15':value15,
      'value16':value16,
      'value17':value17,
      'value18':value18,
      'value19':value19,
      'value20':value20,
    };
  }

  factory Tuple20.fromMap(Map<String, dynamic> map) {
    return Tuple20(
      map['value1'] as T1,
      map['value2'] as T2,
      map['value3'] as T3,
      map['value4'] as T4,
      map['value5'] as T5,
      map['value6'] as T6,
      map['value7'] as T7,
      map['value8'] as T8,
      map['value9'] as T9,
      map['value10'] as T10,
      map['value11'] as T11,
      map['value12'] as T12,
      map['value13'] as T13,
      map['value14'] as T14,
      map['value15'] as T15,
      map['value16'] as T16,
      map['value17'] as T17,
      map['value18'] as T18,
      map['value19'] as T19,
      map['value20'] as T20,
    );
  }

//</editor-fold>
}
