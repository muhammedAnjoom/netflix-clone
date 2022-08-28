import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/description/description_bloc.dart';
import 'package:netflix_clone/core/colors/colors.dart';
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
          return ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 500,
                    width: double.infinity,
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                    errorBuilder: (BuildContext ctx, Object expection,
                        StackTrace? stackTrace) {
                      return const Text("error");
                    },
                  ),
                  kHeight20,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                       const RoundText(
                          text: "18+",
                        ),
                        kWidth,
                        RoundText(text: state.status),
                        kWidth,
                        RoundText(text: "⭐ ${state.voteAverage}"),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon:const Icon(
                              Icons.add_circle_outline_sharp,
                              size: 30,
                              color: kwhiteColor,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon:const Icon(
                              Icons.telegram_rounded,
                              color: kwhiteColor,
                              size: 30,
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                      state.title,
                      style:
                          const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    kHeight,
                    Text(state.overview,
                        style: const TextStyle(color: kGray, fontSize: 15))
                      ],
                    ),
                  )
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

class RoundText extends StatelessWidget {
  const RoundText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white30,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 3),
        child: Text(
          text,
          style:const TextStyle(fontSize: 16,),
        ),
      ),
    );
  }
}
