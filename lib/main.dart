import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poke_dex/ui/cubit/pokemon_cubit.dart';
import 'package:poke_dex/ui/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => PokemonCubit())],
      child: ScreenUtilInit(
        designSize: const Size(540, 540), // Tasarım boyutu
        builder: (context,child) {
          return MaterialApp
            (
            debugShowCheckedModeBanner: false,
            title: 'PokeDex',
            theme: ThemeData.dark().copyWith(
              textTheme: GoogleFonts.latoTextTheme(),
            ),
            home: const HomePage(),
          );
        },
      ),
    );
  }
  }

