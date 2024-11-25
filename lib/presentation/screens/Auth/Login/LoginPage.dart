import 'package:flutter/material.dart';
import 'package:widget_app/components/CustomInputText.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static const String name = 'login_screen';

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      body: Stack(
        children: [
           
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/img/DSC_1498.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.7),
                ],
                stops: const [0.5, 1.0], 
              ),
            ),
          ),
          
          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [ 
                  
                  CustomInputText(
                    controller: controller, 
                    hintText: hintText, 
                    obscureText: obscureText
                  ),

                  const SizedBox(height: 20),
                  
                  CustomInputText(
                    controller: controller, 
                    hintText: hintText, 
                    obscureText: obscureText
                  ),
                  
                  const SizedBox(height: 10),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: true,
                            onChanged: (value) {},
                          ),
                          const Text("Remember for 30 days", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          // Acción para recuperar contraseña
                        },
                        child: const Text("Forgot password?", style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 20),
                  
                  ElevatedButton(
                    onPressed: () {
                      // Acción de login
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:  const Color.fromRGBO(206, 18, 65, 1.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      child: Text(
                        "Ingresar",
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 20),
                  
                  TextButton(
                    onPressed: () {
                      // Acción para registrarse
                    },
                    child: const Text("Olvidaste la contraseña", style: TextStyle(color: Colors.white)),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}