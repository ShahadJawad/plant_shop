import 'package:flutter/material.dart';
import 'package:plant_shop/constants.dart';

class sing_page extends StatelessWidget {
  const sing_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(backroundimage), fit: BoxFit.fill),
          ),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 1),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 50),
                    child: Image(image: AssetImage('assest/images/logo.png'),
                      height: 290,width: 250,)),

                Container(
                  width: MediaQuery.of(context).size.width/2,
                    child: Text("No longer to forget watering your plants!",
                    style: TextStyle(fontSize: 20,color:Color.fromARGB(255, 24, 59, 87) ),
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height /8,
                  //  height: 750.0,
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                      decoration:  const InputDecoration(
                          prefixIcon: Icon(Icons.email_outlined,size: 28,
                          color:  Color.fromARGB(255, 24, 59, 87),),
                          hintText:" Email",
                      ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
               const SizedBox(height: 10),
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: TextFormField(
                    decoration:  const InputDecoration(
                        prefixIcon: Icon(Icons.key_outlined,size: 28,
                          color:  Color.fromARGB(255, 24, 59, 87),),
                        hintText:"Password" ,

                    ),
                     keyboardType: TextInputType.visiblePassword,
                    ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: (){},
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 24, 59, 87),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9),
                      ),
                    ),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'I\'m a new user,',
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          color: Color.fromARGB(255, 24, 59, 87),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
