import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_social/src/domain/comments/comment.dart';
import 'package:team_social/src/presentation/comments/cubit/comments_cubit.dart';


class UserInput extends StatefulWidget {
  UserInput({Key? key}) : super(key: key);

  @override
  State<UserInput> createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _nameController,
            decoration: InputDecoration(hintText: 'Your name'),
            validator: (input) {
              if (input == null || input.length < 3) {
                return 'Name too short';
              }
            },
          ),
          TextFormField(
            controller: _messageController,
            decoration: InputDecoration(hintText: 'Enter your comment'),
            maxLines: 5,
            validator: (input) {
              if (input == null || input.length < 3) {
                return 'Comment too short';
              }
            },
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: MaterialButton(
              child: const Text('Send'),
              onPressed: () {
                if (_formKey.currentState != null &&
                    _formKey.currentState!.validate()) {
                  context.read<CommentsCubit>().sendMessage(Comment(
                      timestamp: DateTime.now().millisecondsSinceEpoch,
                      sender: _nameController.text,
                      text: _messageController.text));
                  _nameController.clear();
                  _messageController.clear();
                }
              },
            ),
          )
        ],
      ),
    ));
  }
}
