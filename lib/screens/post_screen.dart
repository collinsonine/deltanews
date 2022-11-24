import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 4;
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(15),
          child: CircleAvatar(
            radius: 10,
            child: Image(image: AssetImage('assets/images/pic1.png')),
          ),
        ),
        title: const Text(
          "Delta News",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: CircleAvatar(
              backgroundColor: Colors.blueAccent[100],
              child: IconButton(
                  onPressed: (() {}),
                  icon: const Icon(
                    Icons.notification_add_rounded,
                    color: Colors.blue,
                  )),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 10),
                  width: width * 3,
                  child: const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      label: Text('Search'),
                      suffixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(left: 10),
                    width: width,
                    child: const Icon(
                      Icons.filter_list,
                      color: Colors.blue,
                    ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Featured",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                height: 300,
                width: 450,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/peter.png'),
                        fit: BoxFit.fill)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        '2023:Peter Obi promises a new Nigeria devoid of poverty',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                )),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "News",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
