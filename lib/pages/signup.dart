import 'package:flutter/material.dart';
import 'package:sign_in_up_page/pages/signin.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class signUp extends StatelessWidget {
  const signUp({Key? key}) : super(key: key);

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
          "Register Up",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          //textAlign: Alignment.topLeft,
        ),
        const SizedBox(height: 20),
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: TextField(
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
                hintText: "Eg.example@email.com",
                labelText: "Email"),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        counterPicker(),
        const SizedBox(
          height: 30,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                //icon: Icon(Icons.lock),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
                labelText: "Password:"),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
              onPressed: () {},
              child: const Text(
                "Register",
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
                  "Sign with google",
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
              "Has any Acount?",
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const signIn()),
                );
              },
              child: Text(
                "Sign Up",
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ),
          ]),
        ),
        const SizedBox(
          height: 40,
        ),
        Center(
            child: const Text("by registering your account you agree to our")),
        TextButton(
          onPressed: () {},
          child: Text(
            "Terms and Condition",
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
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
