import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: ListView(
        children: [
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        // color: Colors.blue,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1520315342629-6ea920342047?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Container(
                    // margin: EdgeInsets.symmetric(vertical: 10),
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(10.0),
                          hintText: "What\'s on your mainds",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          )),
                    ),
                  )),
                ],
              )),
          const Divider(
            color: Colors.black12,
            height: 0,
            thickness: 1.5,
            endIndent: 0,
          ),
          Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton.icon(
                  onPressed: () {
                    // print("click");
                  },
                  icon: const Icon(
                    Icons.video_library,
                    color: Colors.red,
                  ),
                  label: const Text(
                    "Live",
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                const VerticalDivider(
                  color: Colors.red,
                  thickness: 1,
                  indent: 20,
                  endIndent: 0,
                  width: 20,
                ),
                TextButton.icon(
                  onPressed: () {
                    // print("click");
                  },
                  icon: const Icon(
                    Icons.photo_album_sharp,
                    color: Colors.blue,
                  ),
                  label: const Text(
                    "Photo",
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                const VerticalDivider(
                  color: Colors.red,
                  thickness: 1,
                  indent: 20,
                  endIndent: 0,
                  width: 20,
                ),
                TextButton.icon(
                  onPressed: () {
                    // print("click");
                  },
                  icon: const Icon(
                    Icons.video_call_sharp,
                    color: Colors.red,
                  ),
                  label: const Text(
                    "Room",
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
