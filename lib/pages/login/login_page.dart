import 'package:awesome_app/pages/home/home.dart';
import 'package:awesome_app/utils/constants.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = "/login";
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isHidden = true;
  void _togglePasswordVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  final formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            color: Colors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 100.0),
                Padding(
                  padding: EdgeInsets.only(
                    top: 0.0,
                    bottom: 0.0,
                    left: 20.0,
                    right: 0.0,
                  ),
                  child: Text(
                    'Sign In',
                    style: TextStyle(fontSize: 28.0, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 0.0,
                    bottom: 0.0,
                    left: 20.0,
                    right: 0.0,
                  ),
                  child: Text(
                    "Welcome To Awesome App",
                    style: TextStyle(fontSize: 14.0, color: Colors.white),
                  ),
                ),
                SizedBox(height: 40.0),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35.0),
                        topRight: Radius.circular(100.0),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 20.0,
                        bottom: 0.0,
                        right: 20.0,
                        left: 20.0,
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width / 1.2,
                            height: 50.0,
                            padding: EdgeInsets.only(
                              top: 0.0,
                              bottom: 0.0,
                              left: 16.0,
                              right: 16.0,
                            ),
                            margin: EdgeInsets.only(top: 16.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15.0),
                                topLeft: Radius.circular(0.0),
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(15.0),
                              ),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5.0,
                                  color: Colors.black12,
                                )
                              ],
                            ),
                            child: TextFormField(
                              controller: _usernameController,
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              validator: (s) {},
                              decoration: InputDecoration(
                                hintText: 'Email',
                                icon: Icon(
                                  Icons.email,
                                  color: Colors.blue,
                                ),
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.2,
                            height: 50.0,
                            padding: EdgeInsets.only(
                              top: 0.0,
                              bottom: 0.0,
                              left: 16.0,
                              right: 16.0,
                            ),
                            margin: EdgeInsets.only(top: 16.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15.0),
                                topLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(0.0),
                              ),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5.0,
                                  color: Colors.black12,
                                ),
                              ],
                            ),
                            child: TextFormField(
                              controller: _passwordController,
                              obscureText: _isHidden,
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.visiblePassword,
                              textInputAction: TextInputAction.done,
                              validator: (s) {},
                              decoration: InputDecoration(
                                hintText: 'Password',
                                icon: Icon(
                                  Icons.lock,
                                  color: Colors.blue,
                                ),
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                ),
                                suffix: InkWell(
                                  onTap: _togglePasswordVisibility,
                                  child: Icon(
                                    _isHidden
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            padding: EdgeInsets.only(
                              top: 0.0,
                              bottom: 0.0,
                              left: 16.0,
                              right: 16.0,
                            ),
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 5.0,
                                primary: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(15.0),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => MyHomePage(),
                                //   ),
                                // );
                                Constants.prefs.setBool("loggedIn", true);
                                Navigator.pushReplacementNamed(
                                  context,
                                  MyHomePage.routeName,
                                );
                              },
                              child: Text(
                                'Sign In'.toUpperCase(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
