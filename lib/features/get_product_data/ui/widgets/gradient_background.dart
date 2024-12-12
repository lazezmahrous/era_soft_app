// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:t_shirt/core/theming/colors.dart';

// import '../../data/logic/pay/pay_cubit.dart';

// class GradientBackground extends StatefulWidget {
//   const GradientBackground({super.key, required this.backGroundcolors});
//   final List<String> backGroundcolors;
//   @override
//   State<GradientBackground> createState() => _GradientBackgroundState();
// }

// class _GradientBackgroundState extends State<GradientBackground> {
//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<SubjectCubit, SubjectState>(
//       listener: (context, state) {
//         if (state is SubjectLoading) {
//           showLoadingDialog(context);
//           return;
//         }
//         Navigator.of(context, rootNavigator: true).pop();
//         if (state is SubjectFailed) {
//           showErrorDialog(context);
//         }
//         if (state is SubjectSuccess) {
//           showSuccessDialog(context);
//         }
//       },
//       child: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               (ColorsManager.mainWhite),
//               HexColor(widget.backGroundcolors.first.isEmpty
//                       ? '#FF0000'
//                       : widget.backGroundcolors[
//                               context.read<PayCubit>().swiperImageIndex]
//                           .replaceAll('0x', '#'))
//                   .withOpacity(.9),
//             ],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//       ),
//     );
//   }
// }
