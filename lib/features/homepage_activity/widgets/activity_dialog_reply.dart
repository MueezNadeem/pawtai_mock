import 'package:flutter/material.dart';

class ActivityReplyDialog extends StatelessWidget {
  const ActivityReplyDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Image.asset(
                    'assets/images/karsten-winegeart-Qb7D1xw28Co-unsplash-2.png'),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text("Fido went pop"),
              )
            ],
          ),
          Flexible(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return const ListTile(
                  title: Text("Text"),
                  subtitle: Text(
                    "2:30PM\t-\tMueez Nadeem",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: null,
              decoration: InputDecoration(
                  hintText: " Add a reply..",
                  hintStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 0.8),
                      borderRadius: BorderRadius.circular(40))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  child: const Text(
                    "Add Reply",
                    style: TextStyle(
                        letterSpacing: 0.2,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
