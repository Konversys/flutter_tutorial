import 'package:flutter/material.dart';

import '../models/event.dart';

class EventCard extends StatefulWidget {
  const EventCard({
    Key? key,
    required this.event,
  }) : super(key: key);

  final Event event;

  @override
  State<EventCard> createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  bool _isEnabled = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("init State");
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.red,
        margin: EdgeInsets.symmetric(vertical: 3),
        elevation: 5,
        child: ListTile(
          enabled: _isEnabled,
          title: Text(widget.event.name),
          subtitle: Text(
              "${widget.event.location} ${widget.event.startDateTime.year}"),
          leading: Icon(
            Icons.local_activity,
            size: 20,
            color: Colors.blue,
          ),
          trailing: IconButton(
            icon: _isEnabled
                ? Icon(Icons.lock_clock_outlined)
                : Icon(Icons.lock_open),
            onPressed: () => setState(() {
              _isEnabled = !_isEnabled;
            }),
          ),
          onTap: () => print("${widget.event.name} tap"),
          onLongPress: () => print("${widget.event.name} LongPress"),
          selected: true,
        ));
  }
}
