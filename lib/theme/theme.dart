// class AppTheme {
//   static const darkBg = Color.fromRGBO(21, 22, 26, 1);
//   static const primary = Color.fromRGBO(43, 100, 246, 1);
//
//   static ThemeData theme() {
//     return ThemeData(
//       platform: TargetPlatform.iOS,
//       brightness: Brightness.light,
//       primaryColor: primary,
//       appBarTheme: const AppBarTheme(
//         centerTitle: true,
//         backgroundColor: Colors.white,
//         elevation: 0.2,
//         iconTheme: IconThemeData(color: Colors.black),
//       ),
//     );
//   }
//
//   static ThemeData darkTheme() {
//     return ThemeData(
//       platform: TargetPlatform.iOS,
//       scaffoldBackgroundColor: darkBg,
//       primaryColor: primary,
//       brightness: Brightness.dark,
//       appBarTheme: const AppBarTheme(
//         centerTitle: true,
//         elevation: 1,
//         backgroundColor: darkBg,
//       ),
//     );
//   }
// }