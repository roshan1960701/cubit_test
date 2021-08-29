import 'package:cubit_test/Post/post_cubit.dart';
import 'package:cubit_test/Post/post_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostPage extends StatefulWidget {
  const PostPage({key}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PostCubit, PostState>(
        builder: (context, state) {
          if (state is LoadingState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is ErrorState) {
            return Center(
              child: Icon(Icons.close),
            );
          } else if (state is LoadedState) {
            final post = state.post;

            return ListView.builder(
              itemCount: post.length,
              itemBuilder: (context, index) => Card(
                child: ListTile(
                  leading: Text('${post[index].id}'),
                  title: Text('${post[index].title}'),

                ),
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
