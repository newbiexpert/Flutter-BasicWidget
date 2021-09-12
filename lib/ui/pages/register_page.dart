part of 'pages.dart';

enum gender { M, F }

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  gender? chooseGender = gender.M;
  bool? cbBumper = false;
  bool? cbShareCost = false;
  bool? cbOpenTrip = false;

  @override
  Widget build(BuildContext context) {
    TextEditingController namaController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController tanggalLahirController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 55, 24, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: 85,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Registrasi Akun",
                style: blackSemiTextFont.copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 28,
              ),
              TextField(
                controller: namaController,
                decoration: InputDecoration(
                    hintText: "Nama",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(16, 5, 0, 5),
                    hintStyle:
                    blackTextFont.copyWith(color: greyColor, fontSize: 14)),
              ),
              SizedBox(
                height: 12,
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(16, 5, 0, 5),
                    hintStyle:
                    blackTextFont.copyWith(color: greyColor, fontSize: 14)),
              ),
              SizedBox(
                height: 12,
              ),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(16, 5, 0, 5),
                    hintStyle:
                    blackTextFont.copyWith(color: greyColor, fontSize: 14)),
              ),
              SizedBox(
                height: 12,
              ),
              TextField(
                controller: tanggalLahirController,
                showCursor: true,
                readOnly: true,
                decoration: InputDecoration(
                    hintText: "Tanggal Lahir",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(16, 5, 0, 5),
                    hintStyle:
                    blackTextFont.copyWith(color: greyColor, fontSize: 14)),
                onTap: () {
                  DatePicker.showDatePicker(context,
                      showTitleActions: true,
                      minTime: DateTime(1945, 1, 1),
                      maxTime: DateTime(2022, 1, 1), onChanged: (date) {
                    print('change $date');
                  }, onConfirm: (date) {
                    print('confirm $date');
                    tanggalLahirController.text =
                        "${date.day}-${date.weekday}-${date.year}";
                  }, currentTime: DateTime.now(), locale: LocaleType.id);
                },
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Jenis Kelamin',
                style: blackTextFont.copyWith(fontSize: 14),
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Radio(
                        value: gender.M,
                        groupValue: chooseGender,
                        onChanged: (gender? value) {
                          setState(() {
                            chooseGender = value;
                          });
                        },
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Laki - laki',
                          style: blackTextFont.copyWith(fontSize: 14))
                    ],
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Row(
                    children: [
                      Radio(
                        value: gender.F,
                        groupValue: chooseGender,
                        onChanged: (gender? value) {
                          setState(() {
                            chooseGender = value;
                          });
                        },
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Perempuan',
                          style: blackTextFont.copyWith(fontSize: 14))
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Rekomendasi Pencarian',
                style: blackTextFont.copyWith(fontSize: 14),
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: cbBumper,
                        onChanged: (bool? value) {
                          setState(() {
                            cbBumper = value;
                          });
                        },
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Bumper',
                          style: blackTextFont.copyWith(fontSize: 14))
                    ],
                  ),
                  SizedBox(
                    width: 54,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: cbShareCost,
                        onChanged: (bool? value) {
                          setState(() {
                            cbShareCost = value;
                          });
                        },
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Share Cost',
                          style: blackTextFont.copyWith(fontSize: 14))
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: cbOpenTrip,
                    onChanged: (bool? value) {
                      setState(() {
                        cbOpenTrip = value;
                      });
                    },
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Open Trip', style: blackTextFont.copyWith(fontSize: 14))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
