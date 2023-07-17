import 'package:flutter/material.dart';
import 'package:shared_prefrence/Resources/Model_class.dart';
import '../Resources/Ptefrence_servicies.dart';
import '../Resources/TextStore.dart';
import '../SignupPage/SignupScreen.dart';
import 'HomeController.dart';
import 'HomeWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    getData();
    super.initState();
    print("--------------------------------");
  }

  void onTapAddUser() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SignupScreen(),
      ),
    );
  }

  List<UserDataModel> userList = [];

  void getData() {
    String data = PrefrenceSer.getString(TextStore.userDataKey);
    // List storeMap = jsonDecode(data);
    print(data);
    userList = userDataModelFromJson(data);
    //userList.add(obj);
    //print(userList);
    setState(() {});
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: ListView.builder(
        itemCount: userList.length,
        physics: const BouncingScrollPhysics(),
        reverse: false,
        itemBuilder: (context, index) {
          return listTileForHome(
              context: context,
              title: userList[index].firstName.toString(),
              subtitle: userList[index].email.toString(),
              id: index + 1);
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => onTapAddUser(),
          backgroundColor: Colors.purple,
          child: const Icon(Icons.add)),
    );
  }
}

/*


 */
