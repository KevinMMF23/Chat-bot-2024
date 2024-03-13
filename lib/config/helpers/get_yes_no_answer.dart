import 'package:dio/dio.dart';
import 'package:yes_no_chat/domain/entities/message.dart';

class GetYesNoAnswer{
  final _dio = Dio();


  Future<Message> getAnswer() async {
    final response = await _dio.get("http://yesno.wtf/api");
    print(response.data);
    return Message(
      text: "",
      FromWho: FromWho.hers);
  }

}