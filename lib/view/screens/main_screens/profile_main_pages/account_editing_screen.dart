import 'package:flutter/material.dart';

enum ChosenMajor {
  tajrobi,
  riazi,
  honar,
  ensani,
  zaban,
}

enum ChosenYear {
  dah,
  yazdah,
  dawazdah,
  faregh,
}

enum ChosenTest {
  ghalachi,
  maz,
  gaj,
  gozina,
  snajesh,
}

class AccountEditingScreen extends StatefulWidget {
  static const route = '/accountEditingScreen';
  const AccountEditingScreen({super.key});

  @override
  State<AccountEditingScreen> createState() => _AccountEditingScreenState();
}

class _AccountEditingScreenState extends State<AccountEditingScreen> {
  var init = true;

  ChosenMajor major = ChosenMajor.riazi;
  ChosenYear year = ChosenYear.faregh;
  ChosenTest testField = ChosenTest.ghalachi;
  var callWithFamily = false;

  var majorname = '';
  var yearName = '';
  var callWithFamilyName = '';
  var testName = '';
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (init) {
      chosenMajorName();
      chosenYearName();
      chosenCallName();
      chosenTestName();
      init = false;
    }
  }

  Widget chossemajor(BuildContext ctx) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                elevation: 0,
                shape: const StadiumBorder(),
              ),
              onPressed: () {
                major = ChosenMajor.tajrobi;
                Navigator.of(ctx).pop();
              },
              child: const Text(
                'علوم تجربی',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                elevation: 0,
                shape: const StadiumBorder(),
              ),
              onPressed: () {
                major = ChosenMajor.ensani;
                Navigator.of(ctx).pop();
              },
              child: const Text(
                'ادبیات و علوم انسانی',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                elevation: 0,
                shape: const StadiumBorder(),
              ),
              onPressed: () {
                major = ChosenMajor.honar;
                Navigator.of(ctx).pop();
              },
              child: const Text(
                'هنر',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                elevation: 0,
                shape: const StadiumBorder(),
              ),
              onPressed: () {
                major = ChosenMajor.riazi;
                Navigator.of(ctx).pop();
              },
              child: const Text(
                'ریاضی و فیزیک',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                elevation: 0,
                shape: const StadiumBorder(),
              ),
              onPressed: () {
                major = ChosenMajor.zaban;
                Navigator.of(ctx).pop();
              },
              child: const Text(
                'زبان',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget chosseYear(BuildContext ctx) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                elevation: 0,
                shape: const StadiumBorder(),
              ),
              onPressed: () {
                year = ChosenYear.dah;
                Navigator.of(ctx).pop();
              },
              child: const Text(
                'دهم',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                elevation: 0,
                shape: const StadiumBorder(),
              ),
              onPressed: () {
                year = ChosenYear.yazdah;
                Navigator.of(ctx).pop();
              },
              child: const Text(
                'یازدهم',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                elevation: 0,
                shape: const StadiumBorder(),
              ),
              onPressed: () {
                year = ChosenYear.dawazdah;
                Navigator.of(ctx).pop();
              },
              child: const Text(
                'داوزدهم',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                elevation: 0,
                shape: const StadiumBorder(),
              ),
              onPressed: () {
                year = ChosenYear.faregh;

                Navigator.of(ctx).pop();
              },
              child: const Text(
                'فارغ التحصیل',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget chosseCall(BuildContext ctx) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                elevation: 0,
                shape: const StadiumBorder(),
              ),
              onPressed: () {
                callWithFamily = true;
                Navigator.of(ctx).pop();
              },
              child: const Text(
                'تماس با خانواده می خواهم',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                elevation: 0,
                shape: const StadiumBorder(),
              ),
              onPressed: () {
                callWithFamily = false;
                Navigator.of(ctx).pop();
              },
              child: const Text(
                'تماس با خانواده نمی خواهم',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget chosseTest(BuildContext ctx) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                elevation: 0,
                shape: const StadiumBorder(),
              ),
              onPressed: () {
                testField = ChosenTest.gaj;
                Navigator.of(ctx).pop();
              },
              child: const Text(
                'گاج',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                elevation: 0,
                shape: const StadiumBorder(),
              ),
              onPressed: () {
                testField = ChosenTest.ghalachi;
                Navigator.of(ctx).pop();
              },
              child: const Text(
                'قلم جی',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                elevation: 0,
                shape: const StadiumBorder(),
              ),
              onPressed: () {
                testField = ChosenTest.maz;
                Navigator.of(ctx).pop();
              },
              child: const Text(
                'ماز',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                elevation: 0,
                shape: const StadiumBorder(),
              ),
              onPressed: () {
                testField = ChosenTest.snajesh;
                Navigator.of(ctx).pop();
              },
              child: const Text(
                'سنجش',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                elevation: 0,
                shape: const StadiumBorder(),
              ),
              onPressed: () {
                testField = ChosenTest.gozina;
                Navigator.of(ctx).pop();
              },
              child: const Text(
                'گذینه دو',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void chosenMajorName() {
    if (major == ChosenMajor.ensani) {
      majorname = 'ادبیات و علوم انسانی';
    }
    if (major == ChosenMajor.riazi) {
      majorname = 'ریاضی و فیزیک';
    }
    if (major == ChosenMajor.tajrobi) {
      majorname = 'علوم تحربی';
    }
    if (major == ChosenMajor.honar) {
      majorname = 'هنر';
    }
    if (major == ChosenMajor.zaban) {
      majorname = 'زبان';
    }
  }

  void chosenYearName() {
    if (year == ChosenYear.dah) {
      yearName = 'دهم';
    }
    if (year == ChosenYear.yazdah) {
      yearName = 'یازدهم';
    }
    if (year == ChosenYear.dawazdah) {
      yearName = 'دوازدهم';
    }
    if (year == ChosenYear.faregh) {
      yearName = 'فارغ التحصیل';
    }
  }

  void chosenCallName() {
    if (callWithFamily) {
      callWithFamilyName = 'تماس با خانواده می خواهم';
      return;
    }
    callWithFamilyName = 'تماس با خانواده نمی خواهم';
  }

  void chosenTestName() {
    if (testField == ChosenTest.gaj) {
      testName = 'گاج';
    }
    if (testField == ChosenTest.ghalachi) {
      testName = 'قلم چی';
    }
    if (testField == ChosenTest.gozina) {
      testName = 'گذینه دو';
    }
    if (testField == ChosenTest.maz) {
      testName = 'ماز';
    }
    if (testField == ChosenTest.snajesh) {
      testName = 'سنجش';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'ویرایش حساب',
          style: TextStyle(color: Colors.black),
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.arrow_back_sharp,
              size: 28,
              textDirection: TextDirection.rtl,
            ),
            onPressed: () {
              FocusScope.of(context).unfocus();
              Navigator.of(context).pop();
            },
          ),
        ],
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        iconTheme: Theme.of(context).iconTheme,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    radius: 50,
                    child: Image.asset(
                      'assets/images/dummyProfilePicture.png',
                      scale: 2,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 60,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.edit,
                        size: 30,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Form(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1,
                      color: Colors.white,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: TextFormField(
                      textAlign: TextAlign.right,
                      initialValue: 'مبین کریمی',
                      decoration: const InputDecoration(
                        hintText: 'نام و نام خانوادگی',
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (contextmodel) => chossemajor(contextmodel),
                    ).then((value) {
                      setState(() {
                        chosenMajorName();
                      });
                    });
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          width: 1,
                          color: Colors.white,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(Icons.arrow_back_ios_sharp),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(majorname),
                          ),
                        ],
                      )),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (contextmodel) => chosseYear(contextmodel),
                    ).then((value) {
                      setState(() {
                        chosenYearName();
                      });
                    });
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          width: 1,
                          color: Colors.white,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(Icons.arrow_back_ios_sharp),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(yearName),
                          ),
                        ],
                      )),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1,
                      color: Colors.white,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.left,
                      initialValue: '09921238240',
                      decoration: const InputDecoration(
                        hintText: 'شماره موبایل',
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (contextmodel) => chosseCall(contextmodel),
                    ).then((value) {
                      setState(() {
                        chosenCallName();
                      });
                    });
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          width: 1,
                          color: Colors.white,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(Icons.arrow_back_ios_sharp),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(callWithFamilyName),
                          ),
                        ],
                      )),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (contextmodel) => chosseTest(contextmodel),
                    ).then((value) {
                      setState(() {
                        chosenTestName();
                      });
                    });
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          width: 1,
                          color: Colors.white,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(Icons.arrow_back_ios_sharp),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(testName),
                          ),
                        ],
                      )),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1,
                      color: Colors.white,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: TextFormField(
                      textAlign: TextAlign.right,
                      decoration: const InputDecoration(
                        hintText: 'نام خانوادگی',
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1,
                      color: Colors.white,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: TextFormField(
                      textAlign: TextAlign.right,
                      decoration: const InputDecoration(
                        hintText: 'ایمیل',
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1,
                      color: Colors.white,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: TextFormField(
                      textAlign: TextAlign.right,
                      decoration: const InputDecoration(
                        hintText: 'درباره خودت',
                        enabledBorder: InputBorder.none,
                      ),
                      maxLines: 4,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'ثبت اطلاعات',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
