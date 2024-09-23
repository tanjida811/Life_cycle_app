import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LifeCycleScreen extends StatefulWidget {
  const LifeCycleScreen({super.key});

  @override
  State<LifeCycleScreen> createState() => _LifeCycleScreenState();
}

class _LifeCycleScreenState extends State<LifeCycleScreen>
    with WidgetsBindingObserver {
  // did Change life cycle app
  AppLifecycleState? _lifecycleState;

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeDependencies
    // super.didChangeAppLifecycleState(state);
    setState(() {
      _lifecycleState = state;
      print('AppLifecycleState changed to : $state');
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Life Cycle App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Center(child: Text('Life Cycle State : $_lifecycleState')),
    );
  }
}
