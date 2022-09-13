import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ButtonLogin extends StatelessWidget {
  final login = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              child: AnimatedBuilder(
                  animation: login,
                  builder: (context, _) {
                    return login.value
                        ? const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(),
                          )
                        : const Text("Entrar");
                  }),
              onPressed: () => login.value = !login.value,
            ),
          ),
        ),
      ),
    );
  }
}
