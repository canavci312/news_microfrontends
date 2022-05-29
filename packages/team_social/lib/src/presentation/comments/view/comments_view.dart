import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:team_social/src/presentation/comments/cubit/comments_cubit.dart';
import 'package:team_social/src/presentation/comments/view/widgets/user_input.dart';


class CommentsView extends StatelessWidget {
  const CommentsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommentsCubit, CommentsState>(
      builder: (context, state) {
        return state.when(
          initial: SizedBox.new,
          loading: CircularProgressIndicator.new,
          success: (list) => Column(
            children: [
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: list.comment.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          list.comment[index].sender,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(list.comment[index].text),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            DateFormat.yMMMEd('tr')

                                // displaying formatted date
                                .format(
                              DateTime.fromMillisecondsSinceEpoch(
                                  list.comment[index].timestamp),
                            ),
                            style: const TextStyle(fontStyle: FontStyle.italic),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
              UserInput(),
       
            ],
          ),
        );
      },
    );
  }
}
