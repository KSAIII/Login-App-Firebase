import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_app/blocks/bloc/sign_in_bloc/bloc/sign_in_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
			appBar: AppBar(
				title: const Text(
					'Welcome, you are In !'
				),
				actions: [
					IconButton(
						onPressed: () {
							context.read<SignInBloc>().add(const SignOutRequired());
						}, 
						icon: const Icon(Icons.login)
					)
				],
			),
		);
  }
}