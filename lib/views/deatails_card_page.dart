import 'package:buttons_navigation_hero/views/third_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailsCardPage extends StatelessWidget {
  const DetailsCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: 'card',
            child: Container(
              width: double.infinity,
              height: 300,
              decoration: const BoxDecoration(
                // borderRadius: BorderRadius.all(Radius.circular(50)),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    "https://img.freepik.com/free-photo/pasta-colored-farfalle-salad-with-tomatoes-mozzarella-basil_2829-14376.jpg?w=1380&t=st=1710595190~exp=1710595790~hmac=421538dee0ef6b3984ab305e402cef10277fdb67ce81c1d5e5225cbee13db3d9",
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Pasta Salad",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Do enim laborum veniam eiusmod anim. Laboris aliqua culpa adipisicing id incididunt officia est reprehenderit dolor. Laboris officia eiusmod laboris sunt proident cillum velit qui ea et non anim incididunt sunt. Sunt ullamco laborum consequat cillum. Aute do cupidatat id quis laborum duis aliquip anim ad dolor commodo ullamco non. Quis aliqua nostrud in laboris.",
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ),
          const SizedBox(height: 50),
          Hero(
            tag: 'button',
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const ThirdPage();
                    },
                  ));
                },
                child: const Text("Order Now")),
          )
        ],
      ),
    );
  }
}
