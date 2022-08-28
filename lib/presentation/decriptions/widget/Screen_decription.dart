import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/description/description_bloc.dart';
import 'package:netflix_clone/core/constants.dart';

class ScreenDescription extends StatelessWidget {
  const ScreenDescription({Key? key, required this.id}) : super(key: key);
  final int id;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<DescriptionBloc>(context).add(LoadDataMovie(id: id));
    });
    return Scaffold(
      body: BlocBuilder<DescriptionBloc, DescriptionState>(
        builder: (context, state) {
          final imageUrl = "$imageAppendUrl${state.posterPath}";
          return Image(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
            errorBuilder: (BuildContext ctx, Object expection, StackTrace? stackTrace ){
              return const Text("error");
            },
          );
        },
      ),
    );
  }
}
