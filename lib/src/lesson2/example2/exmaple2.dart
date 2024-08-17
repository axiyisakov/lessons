/*
Created by Axmadjon Isaqov on 11:38:36 17.08.2024
*© 2024 @axiydev 
*/

import 'package:dartz/dartz.dart';

///[dartz] paketiga oddiy misollar
void main() {
  ///[null] qiymatlar bilan ishlash uchun [Option] classidan foydalanamiz
  final Option<int> option = Some(45);
  final Option<int> option2 = None();

  final result1 = option.getOrElse(() => -1);
  final result2 = option2.getOrElse(() => -1);

  print('result1: $result1');
  print('result2: $result2');

  ///Error handling uchun [Either] classidan foydalanamiz
  final Either<String, int> dataOrError = Right(45);
  final Either<String, int> dataOrError2 = Left('Error');

  final result3 = dataOrError.fold((error) => error, (data) => data);
  final result4 = dataOrError2.fold((error) => error, (data) => data);

  print('result3: $result3');
  print('result4: $result4');

  ///[Option] classidan foydalanib qiymatlarini o'zgaritiramiz
  final doubledResult1 = option.map((value) => value * 2);
  print('doubledResult1:${doubledResult1.getOrElse(() => -1)}');

  final incrementedResult1 = option.flatMap((value) => Some(value + 1));
  print('incrementedResult1: ${incrementedResult1.getOrElse(() => -1)}');
}
