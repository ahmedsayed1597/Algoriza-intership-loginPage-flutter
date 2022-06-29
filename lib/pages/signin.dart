import 'package:flutter/material.dart';
import 'package:sign_in_up_page/pages/signup.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class signIn extends StatelessWidget {
  const signIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(padding: const EdgeInsets.all(20.0), children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.3,
          //width: MediaQuery.of(context).size.width,
          child: const Image(
            fit: BoxFit.cover,
            image: AssetImage("lib/assets/flowers.jpg"),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Welcom To Fashion Day",
          style: TextStyle(color: Colors.grey),
          //textAlign: Alignment.topLeft,
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          "Sign in",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          //textAlign: Alignment.topLeft,
        ),
        const SizedBox(height: 20),
        counterPicker(),
        const SizedBox(
          height: 30,
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
              onPressed: () {},
              child: const Text(
                "Sign In",
                style: TextStyle(color: Colors.white, fontSize: 18),
              )),
        ),
        const SizedBox(
          height: 20,
        ),
        const Center(
          child: Text("or"),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: TextButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 30,
                  child: Image.asset(
                    "lib/assets/google.png",
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "Sign in with google",
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              "Doesn't Has any Acount?",
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const signUp()),
                );
              },
              child: Text(
                "Register here",
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ),
          ]),
        ),
        const SizedBox(
          height: 40,
        ),
        const Center(
          child: Text(
              textAlign: TextAlign.center,
              "Use the application according to party rules any kind of violations will be subjected"),
        ),
      ]),
    );
  }
}

Widget counterPicker() {
  return IntlPhoneField(
    decoration: const InputDecoration(
      labelText: 'Phone Number',
      border: OutlineInputBorder(
        borderSide: BorderSide(),
      ),
    ),
    initialCountryCode: 'IN',
    onChanged: (phone) {
      //print(phone.completeNumber);
    },
  );
}
