import 'package:flutter/material.dart';
import 'package:project/model/post_model.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    PostModel args = ModalRoute.of(context)?.settings.arguments as PostModel;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(28),
        child: Column(
          children: [
            Text(args.title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                )),
            const SizedBox(
              height: 24,
            ),
            Text(args.body),
            const SizedBox(
              height: 24,
            ),
            Text(
              "Noticia: ${args.id}, Autor: ${args.userId}",
            )
          ],
        ),
      ),
    );
  }
}
