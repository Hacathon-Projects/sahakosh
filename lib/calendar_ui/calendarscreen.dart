import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class ScheduleMeetingPage extends StatefulWidget {
  @override
  _ScheduleMeetingPageState createState() => _ScheduleMeetingPageState();
}

class _ScheduleMeetingPageState extends State<ScheduleMeetingPage> {
  List<Meeting> _meetings = <Meeting>[];
  final TextEditingController _eventNameController = TextEditingController();
  final TextEditingController _eventDescriptionController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black87,
            ),
            onPressed: () => Navigator.pop(context)),
        title: Text(
          "Schedule Meeting",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: SfCalendar(
              view: CalendarView.month,
              monthViewSettings: MonthViewSettings(
                  appointmentDisplayMode: MonthAppointmentDisplayMode.indicator,
                  showAgenda: true),
              dataSource: MeetingDataSource(_meetings),
              onTap: (CalendarTapDetails details) {
                _showAddMeetingDialog(details.date);
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showAddMeetingDialog(DateTime? date) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Add Meeting"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                controller: _eventNameController,
                decoration: InputDecoration(
                  labelText: "Event Name",
                ),
              ),
              TextField(
                controller: _eventDescriptionController,
                decoration: InputDecoration(
                  labelText: "Event Description",
                ),
              ),
            ],
          ),
          actions: <Widget>[
            ElevatedButton(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            ElevatedButton(
              child: Text("Add"),
              onPressed: () {
                _addMeeting(_eventNameController.text,
                    _eventDescriptionController.text, date!);
                Navigator.pop(context);
                AlertDialog(
                  title: Text("Meeting Scheduled on ${date!}"),
                );
              },
            ),
          ],
        );
      },
    );
  }

  void _addMeeting(String name, String description, DateTime startTime) {
    final Meeting meeting = Meeting(
        name, description, startTime, startTime.add(Duration(hours: 1)));
    setState(() {
      _meetings.add(meeting);
    });
  }
}

class MeetingDataSource extends CalendarDataSource {
  /// Creates a meeting data source, which used to set the appointment
  /// collection to the calendar
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return _getMeetingData(index).from;
  }

  @override
  DateTime getEndTime(int index) {
    return _getMeetingData(index).to;
  }

  @override
  String getSubject(int index) {
    return _getMeetingData(index).eventName;
  }

  Meeting _getMeetingData(int index) {
    final dynamic meeting = appointments![index];
    late final Meeting meetingData;
    if (meeting is Meeting) {
      meetingData = meeting;
    }

    return meetingData;
  }
}

/// Custom business object class which contains properties to hold the detailed
/// information about the event data which will be rendered in calendar.
class Meeting {
  /// Creates a meeting class with required details.
  Meeting(
    this.eventName,
    this.eventdescription,
    this.from,
    this.to,
  );

  /// Event name which is equivalent to subject property of [Appointment].
  String eventName;
  String eventdescription;

  /// From which is equivalent to start time property of [Appointment].
  DateTime from;

  /// To which is equivalent to end time property of [Appointment].
  DateTime to;
}
