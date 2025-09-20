import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubit/post_cubit.dart';
import 'package:flutter_application_1/sates/post_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  void initState() {
    super.initState();
    context.read<PostCubit>().fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cubit with API")),
      body: BlocBuilder<PostCubit, PostState>(
        builder: (context, state) {
          if (state is UserLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is UserLoaded) {
            return ListView.builder(
              itemCount: state.users.length,
              itemBuilder: (context, index) {
                final user = state.users[index];
                return Card(
                  margin: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 16,
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(user.id.toString()),
                    ),
                    title: Text(user.name, style: const TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Email: ${user.email}"),
                        Text("Body: ${user.body}"),
                      ],
                    ),
                  ),
                );
              },
            );
          }

          if (state is UserError) {
            return Center(child: Text("Error: ${state.message}"));
          }

          return const Center(child: Text("Press button to load"));
        },
      ),
    );
  }
}

