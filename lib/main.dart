import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
	ThemeData darkTheme = ThemeData(
		primarySwatch: Colors.purple,
		brightness: Brightness.dark,
	);

	runApp(MaterialApp(
		theme: darkTheme,
		home: Scaffold(
			appBar: AppBar(
				title: const Text("Contacts"),
			),
			body: Form(
				child: Padding(
					padding: const EdgeInsets.only(top: 64),
					child: Column(
						children: [
							TextFormField(
								decoration: const InputDecoration(
									border: OutlineInputBorder(),
									labelText: "Enter username",
								),
								validator: (value) {
									if(value == null || value.isEmpty){
										return "This field is required";
									}
									return null;
								},
							),
							const SizedBox(height: 16),
							TextFormField(
								decoration: const InputDecoration(
									border: OutlineInputBorder(),
									labelText: "Enter password",
								),
								validator: (value) {
									if(value == null || value.isEmpty){
										return "This field is required";
									}
									return null;
								},
							),
							const SizedBox(height: 16),
							SizedBox(
								width: 360,
								height: 45,
								child: ElevatedButton(
									onPressed: (){
										
									},
									child: const Text("Submit"),
								),
							)
						]
					),

				),
			),
  		)
	));
}
