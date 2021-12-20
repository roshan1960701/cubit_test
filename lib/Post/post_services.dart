import 'package:cubit_test/Post/GetDealer.dart';

import '../Post/post_model.dart';
import 'package:http/http.dart'as http;

class PostServices{

  Future<List<Post>> getPost() async{
    List<Post> getPost;
    try {
      final url = 'https://jsonplaceholder.typicode.com/posts';
      var response = await http.get(url);
      if (response.statusCode == 200) {
        getPost = postFromJson(response.body.toString());

        /*getPost.forEach((element) {
          print(element.title);
        });*/
        return getPost;
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
      return getPost;
    } catch (e) {
      throw e;
    }

  }

  Future<GetMarketingPersons> getDealers() async{
    GetMarketingPersons data;
    try{
      var token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9za3lvbmxpbmVycy5jb21cL2RlbW9cL3N0b2NrMjRcL2FwaVwvbG9naW4iLCJpYXQiOjE2MzM5NDY0OTYsImV4cCI6MTY0OTY3MTI5NiwibmJmIjoxNjMzOTQ2NDk2LCJqdGkiOiJZSWVUdUJvTGdITlRuV1J5Iiwic3ViIjoxLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.Q0HwQUc903HjjyQnp9P7U6mYRVcuP9WerQ5XTtjNzdY';
      var url = Uri.parse('http://skyonliners.com/demo/stock24/api/getSubDealer');
      var response = await http.post(url,
          headers:<String, String> {
            'X-Access-Token': token,
            'Authorization': 'Basic YWRtaW46bXlwY290',
          },
          body: {
            'page_no': '1',
            'limit':'10'
          });
      if(response.statusCode == 200){
        data = getMarketingPersonsFromJson(response.body.toString());
        print(response.body.toString());
        return data;
      }else{
        print('Request failed with status: ${response.statusCode}.');
      }
      return data;
      //return '${response.body.toString()}';
    }catch(e){
      throw e;
    }
  }

}