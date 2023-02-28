import 'package:architecture/blocs/app/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: context.read<AppCubit>().state.maybeMap(
          error: (error) {
            return Center(child: Text(error.message));
          },
          orElse: () => const Center(
                child: Text('Unknown error'),
              )),
    );
  }
}
