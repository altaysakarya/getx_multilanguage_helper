class GetxMultilanguageException implements Exception{
  final String msg;
  const GetxMultilanguageException(this.msg);

  @override
  String toString() => 'GetXMultilanguageException: $msg';
}