import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:putishala/components/appStyles.dart';
import '../components/sizeConfig.dart';
import '../model/onboard_data.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  int currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: currentPage == index
            ? Color.fromARGB(255, 255, 187, 0)
            : const Color.fromARGB(120, 136, 0, 233),
        shape: BoxShape.circle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // double sizeH = SizeConfig.blockSizeH!;
    double sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 8,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: onboardingContents.length,
              itemBuilder: (context, index) => Column(
                children: [
                  SizedBox(height: sizeV * 5),
                  Text(
                    onboardingContents[index].title,
                    style: GoogleFonts.notoSansBengali(
                        textStyle: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(179, 1, 58, 53),
                      fontStyle: FontStyle.normal,
                    )),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: sizeV * 5),

                  // for Image
                  SizedBox(
                    height: sizeV * 37,
                    child: Image.asset(
                      onboardingContents[index].image,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: sizeV * 4),
                  Text(
                    onboardingContents[index].titlebottom,
                    style: GoogleFonts.notoSansBengali(
                        textStyle: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: Color.fromARGB(231, 4, 9, 121),
                      fontStyle: FontStyle.normal,
                    )),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: sizeV * 4,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(169, 53, 2, 172),
                        //fontStyle: FontStyle.normal,
                      )),
                      children: const [
                        TextSpan(text: 'WE CAN '),
                        TextSpan(
                          text: 'HELP YOU ',
                          style: TextStyle(
                            color: Color.fromARGB(241, 206, 142, 4),
                          ),
                        ),
                        TextSpan(text: 'TO BE A \nBETTER '),
                        TextSpan(text: 'VERSION OF '),
                        TextSpan(
                          text: 'YOURSELF',
                          style: TextStyle(
                            color: Color.fromARGB(240, 188, 130, 5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sizeV * 4,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: List.generate(
                onboardingContents.length,
                (index) => dotIndicator(index),
              ),
            ),
          )
        ],
      )),
      // body:IntroductionScreen(
      //   scrollPhysics:const BouncingScrollPhysics(),// Default is BouncingScrollPhysics
      //   pages:const [
      //     // List of Page View Model
      //   ],
      //   rawPages: const [
      //     //
      //   ],
      //   // if provide both rawPages and pages parameter, pages will be used.
      //   onChange: (e){
      //     //When Something Changes
      //   },
      //   onDone:(){
      //     // When done button is press
      //   },
      //   showSkipButton: true, //Is the skip button should be display ,
      //   skip:const Icon(Icons.skip_next),
      //   next: const Icon(Icons.forward),
      //   done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600),),

      //   dotsDecorator: DotsDecorator(
      //     size: const Size.square(10.0),
      //     activeSize: const Size(20.0, 10.0),
      //     activeColor: Theme.of(context).progressIndicatorTheme.color!,
      //     color: Colors.black26,
      //     spacing: const EdgeInsets.symmetric(horizontal:3.0),
      //     activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0))
      //     ),
      // ),
    );
  }
}
