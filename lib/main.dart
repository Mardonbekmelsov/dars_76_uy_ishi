import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson76_bloc_cubit/cubits/todo/product_cubit.dart';
import 'package:lesson76_bloc_cubit/examples/counter/counter_cubit.dart';
import 'package:lesson76_bloc_cubit/ui/screens/products_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) {
          return CounterCubit();
        }),
        BlocProvider(create: (context) {
          return ProductCubit();
        }),
      ],
      child: MaterialApp(
        darkTheme: ThemeData.dark(),
        theme: ThemeData.light(),
        debugShowCheckedModeBanner: false,
        home: ProductsScreen(),
      ),
    );
  }
}
