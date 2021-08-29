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
}