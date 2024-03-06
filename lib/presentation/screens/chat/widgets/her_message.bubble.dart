import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "erwrqrrewrrewewrewrwe",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 20
          ),
          const _ImageBubble(),
          const SizedBox(
            height: 10,
          )
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  const _ImageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print("ancho ${size.width}= ${size.width * 0.7}");
    print("alto ${size.width}= ${size.width * 0.1}");
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
          width: size.width * 0.7,
          height: size.height * 0.2,
          fit: BoxFit.cover,
          "https://i.pinimg.com/originals/78/25/78/782578789c60ff95c9f9db701dfac609.gif",
          loadingBuilder: (context, child, loadingProgress) =>
              (loadingProgress == null)
                  ? child
                  : Container(
                      width: size.width * 0.7,
                      height: size.height * 0.2,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: const Text("Cargando imagen ..."),
                    )),
    );
  }
}
