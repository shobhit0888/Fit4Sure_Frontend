// import 'package:fit4sure/homePages/home_page.dart';
// import 'package:flutter/material.dart';
// import 'package:rive/rive.dart';

// import '../models/rive_assets.dart';
// import '../utils/rive_utils.dart';
// import '../widgets/animated_bar.dart';

// class EntryPage extends StatefulWidget {
//   const EntryPage({super.key});

//   @override
//   State<EntryPage> createState() => _EntryPageState();
// }

// class _EntryPageState extends State<EntryPage> {
//   RiveAsset selectedBottomNav = bottomNavs.first;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       extendBody: true,
//       body: const HomePage(),
//       bottomNavigationBar: SafeArea(
//         child: Container(
//           padding: const EdgeInsets.all(12),
//           margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//           decoration: BoxDecoration(
//             color: Colors.black,
//             borderRadius: const BorderRadius.all(Radius.circular(24)),
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               ...List.generate(
//                 bottomNavs.length,
//                 (index) => GestureDetector(
//                   onTap: () {
//                     bottomNavs[index].input!.change(true);
//                     if (bottomNavs[index] != selectedBottomNav) {
//                       setState(() {
//                         selectedBottomNav = bottomNavs[index];
//                       });
//                     }
//                     Future.delayed(const Duration(seconds: 1), () {
//                       bottomNavs[index].input!.change(false);
//                     });
//                   },
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       AnimatedBar(
//                           isActive: bottomNavs[index] == selectedBottomNav),
//                       SizedBox(
//                         height: 36,
//                         width: 36,
//                         child: Opacity(
//                           opacity:
//                               bottomNavs[index] == selectedBottomNav ? 1 : 0.5,
//                           child: RiveAnimation.asset(
//                             bottomNavs.first.src,
//                             artboard: bottomNavs[index].artboard,
//                             onInit: (artboard) {
//                               StateMachineController controller =
//                                   RiveUtils.getRiveController(artboard,
//                                       stateMachineName:
//                                           bottomNavs[index].stateMachineName);

//                               bottomNavs[index].input =
//                                   controller.findSMI("active") as SMIBool;
//                             },
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
