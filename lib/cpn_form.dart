import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarePlanningNote extends StatelessWidget {
  const CarePlanningNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PatientInfoCard(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.45,
                    child: InfoControllers(
                        controller: TextEditingController(), label: "DOS"),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.45,
                    child: InfoControllers(
                        controller: TextEditingController(),
                        label: "Parties Present "),
                  ),
                ],
              ),
              const Text("Place Of Service : Home",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Switch(
                    value: false,
                    onChanged: (value) {},
                    activeColor: Colors.red,
                  ),
                  const SizedBox(height: 10),
                  const Text("Is the Place of Service Correct?",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 20.h),
              const Text("Caregiver",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10.h),
              const Row(
                children: [
                  CheckboxTextWidget(text: "Spouse"),
                  CheckboxTextWidget(text: "Child"),
                  CheckboxTextWidget(text: "Friend"),
                  CheckboxTextWidget(text: "Other"),
                ],
              ),
              InfoControllers(
                  controller: TextEditingController(), label: "Referred By"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.45,
                    child: InfoControllers(
                        controller: TextEditingController(),
                        label: "Select Medical Director"),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.45,
                    child: InfoControllers(
                        controller: TextEditingController(),
                        label: "Secondary Medical Director"),
                  ),
                ],
              ),
              const FocusWoundForm(),
              const SizedBox(height: 100),
              ChiefComplaintForm(),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.4,
                child: InfoControllers(
                    controller: TextEditingController(),
                    label: "3. MEDICATIONS"),
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.4,
                child: InfoControllers(
                    controller: TextEditingController(), label: "4. ALLERGIES"),
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.4,
                child: InfoControllers(
                    controller: TextEditingController(),
                    label: "5. HISTORY OF PRESENTING ILLNESS"),
              ),
              PatientHistoryForm(),
              SizedBox(height: 30.h),
              SocialHistoryFrom(),
              GeneralPhysicalExam(),
              EducationForm(),
              SizedBox(height: 200.h),
            ],
          ),
        ),
      ),
    );
  }
}

class EducationForm extends StatelessWidget {
  EducationForm({
    super.key,
  });

  final List<String> homeWoundCare = [
    "Select All",
    "Avoid pressure onto the wound",
    "Keep all the areas of the wound covered until dressing needs to be changed ",
    "Leave the dressing on until it is time to change it",
  ];

  final List<String> smoking = [
    "Select All",
    "Ensure nutrition status to promote wound healing",
    "Increase protein intake",
    "Take a daily multivitamin",
  ];

  final List<String> hydrate = [
    "Select All",
    "Increase intake of colorful and assorted vegetables rich in Vitamin A & C ",
    "Increase intake with fortified grains, beans, and meats rich in zinc",
    "Increase intake with fortified grains, beans, and meats rich in zinc",
    "Increase intake with fortified grains, beans, and meats rich in zinc",
    "Increase intake with fortified grains, beans, and meats rich in zinc",
    "Fortified shakes and smoothies",
    "Keep blood sugar under control",
  ];

  final List<String> followUp = [
    "Advanced Wound Care - Assessment",
    "Advanced Wound Care - Debridement",
    "Advanced Wound Care - CTP placement",
    "Discontinue service",
    "Do not schedule patient until further notice  ",
    "Conservative wound - Assessment",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("10. EDUCATION",
            style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10.h),
        const Text("a. Patient was advised and encouraged to:",
            style: TextStyle(fontWeight: FontWeight.bold)),
        const Text("i) Home Wound Care",
            style: TextStyle(fontWeight: FontWeight.bold)),
        ...List.generate(
          homeWoundCare.length,
          (index) => CheckboxTextWidget(text: homeWoundCare[index]),
        ),
        SizedBox(height: 20.h),
        const Text("ii) Smoking education verbally discussed with patient.",
            style: TextStyle(fontWeight: FontWeight.bold)),
        ...List.generate(
          smoking.length,
          (index) => CheckboxTextWidget(text: smoking[index]),
        ),
        SizedBox(height: 20.h),
        const Text(
            "iii) Hydrate with >5 glasses H20; limit sugary drinks and processed foods.",
            style: TextStyle(fontWeight: FontWeight.bold)),
        ...List.generate(
          hydrate.length,
          (index) => CheckboxTextWidget(text: hydrate[index]),
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.4,
          child: InfoControllers(
              controller: TextEditingController(), label: "b) Others:"),
        ),
        const Text("11. Follow-up *",
            style: TextStyle(fontWeight: FontWeight.bold)),
        ...List.generate(followUp.length,
            (index) => RadioButtonTextWidget(text: followUp[index])),
        SizedBox(height: 10.h),
        const Text("a) Draw labs *",
            style: TextStyle(fontWeight: FontWeight.bold)),
        const Column(
          children: [
            CheckboxTextWidget(text: "Select All"),
            Row(
              children: [
                CheckboxTextWidget(text: "CBC "),
                CheckboxTextWidget(text: "CMP"),
                CheckboxTextWidget(text: "BMP"),
              ],
            ),
            Row(
              children: [
                CheckboxTextWidget(text: "Prealbumin "),
                CheckboxTextWidget(text: "Albumin"),
              ],
            ),
            Row(
              children: [
                CheckboxTextWidget(text: "HbAlC "),
                CheckboxTextWidget(text: "Other"),
              ],
            )
          ],
        ),
        SizedBox(height: 20.h),
        const Text("b) Order Ankle Brachial Index test?",
            style: TextStyle(fontWeight: FontWeight.bold)),
        const Row(
          children: [
            RadioButtonTextWidget(text: "Yes"),
            RadioButtonTextWidget(text: "No"),
          ],
        ),
        SizedBox(height: 20.h),
        const Text("c) Order Social Work consult?",
            style: TextStyle(fontWeight: FontWeight.bold)),
        const Row(
          children: [
            RadioButtonTextWidget(text: "Yes"),
            RadioButtonTextWidget(text: "No"),
          ],
        )
      ],
    );
  }
}

class GeneralPhysicalExam extends StatelessWidget {
  GeneralPhysicalExam({
    super.key,
  });

  final List<String> constitution = [
    "Appears well",
    "non-toxic in appearance",
    "Other",
  ];

  final List<String> extremities = [
    "Select All",
    "Temperature of the foot is normal,bilateral  ",
    "Pedal pulse is intact ",
    "Other",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("9. GENERAL PHYSICAL EXAM",
            style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10.h),
        const Text("a) Constitution",
            style: TextStyle(fontWeight: FontWeight.bold)),
        ...List.generate(constitution.length,
            (index) => RadioButtonTextWidget(text: constitution[index])),
        SizedBox(height: 20.h),
        const Text("b) Extremities ",
            style: TextStyle(fontWeight: FontWeight.bold)),
        const Text("i) Vascular of the foot  ",
            style: TextStyle(fontWeight: FontWeight.bold)),
        ...List.generate(extremities.length,
            (index) => RadioButtonTextWidget(text: extremities[index])),
        SizedBox(height: 20.h),
        const Text("ii) Lymphatic of the Foot ",
            style: TextStyle(fontWeight: FontWeight.bold)),
        const Row(
          children: [
            RadioButtonTextWidget(text: "No edema present "),
            RadioButtonTextWidget(text: "Edema is present"),
          ],
        ),
        SizedBox(height: 10.h),
        const Text("c) Skin ", style: TextStyle(fontWeight: FontWeight.bold)),
        const Row(
          children: [
            RadioButtonTextWidget(text: "No rashes are present"),
            RadioButtonTextWidget(text: "Other"),
          ],
        ),
        SizedBox(height: 40.h),
      ],
    );
  }
}

class SocialHistoryFrom extends StatelessWidget {
  SocialHistoryFrom({
    super.key,
  });

  List<String> socialHistory = [
    "Select All",
    "Alone",
    "With spouse",
    "With children",
    "With others",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("8. SOCIAL HISTORY",
            style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10.h),
        const Text("a) Lives at Home",
            style: TextStyle(fontWeight: FontWeight.bold)),
        ...List.generate(
          socialHistory.length,
          (index) => CheckboxTextWidget(text: socialHistory[index]),
        ),
        SizedBox(height: 10.h),
        const Text("b) Alcohol?",
            style: TextStyle(fontWeight: FontWeight.bold)),
        const Row(
          children: [
            RadioButtonTextWidget(text: "Yes"),
            RadioButtonTextWidget(text: "No")
          ],
        ),
        SizedBox(height: 10.h),
        const Text("c) Nutrition",
            style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.4,
          child: InfoControllers(
              controller: TextEditingController(),
              label: "How many meals a day do you eat?"),
        ),
      ],
    );
  }
}

class PatientHistoryForm extends StatelessWidget {
  PatientHistoryForm({
    super.key,
  });

  List<String> pastMedicalHistory = [
    "Select All",
    "Hypertension",
    "Diabetes",
    "Coronary Artery Disease",
    "Stroke",
    "Other",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("a.History is obtained from",
            style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10.h),
        const Row(
          children: [
            CheckboxTextWidget(text: "Patient"),
            CheckboxTextWidget(text: "Spouse"),
            CheckboxTextWidget(text: "Other"),
          ],
        ),
        SizedBox(height: 10.h),
        const Text("b. Problem Focused:",
            style: TextStyle(fontWeight: FontWeight.bold)),
        const Text("i) Antibiotics used for the wounds",
            style: TextStyle(fontWeight: FontWeight.bold)),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.35,
              child: InfoControllers(
                  controller: TextEditingController(), label: "a)1. Name"),
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.2,
              child: InfoControllers(
                  controller: TextEditingController(), label: "b)1. Dosage"),
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.2,
              child: InfoControllers(
                  controller: TextEditingController(), label: "c)1. Duration"),
            ),
          ],
        ),
        const Text("ii) Mobility Status:",
            style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10.h),
        const Text("1. Do you walk?",
            style: TextStyle(fontWeight: FontWeight.bold)),
        const Row(
          children: [
            RadioButtonTextWidget(text: "Yes"),
            RadioButtonTextWidget(text: "No"),
          ],
        ),
        SizedBox(height: 10.h),
        const Text("2. Do you use any assistive devices?",
            style: TextStyle(fontWeight: FontWeight.bold)),
        const Row(
          children: [
            RadioButtonTextWidget(text: "Yes"),
            RadioButtonTextWidget(text: "No"),
          ],
        ),
        SizedBox(height: 20.h),
        const Text("c. Pertinent Negatives",
            style: TextStyle(fontWeight: FontWeight.bold)),
        const Text("i) Do you have a history of bone or soft tissue infection?",
            style: TextStyle(fontWeight: FontWeight.bold)),
        const Row(
          children: [
            RadioButtonTextWidget(text: "Denies"),
            RadioButtonTextWidget(text: "Affirms"),
          ],
        ),
        SizedBox(height: 10.h),
        const Text("ii) Do you have a history of ulcers?",
            style: TextStyle(fontWeight: FontWeight.bold)),
        const Row(
          children: [
            RadioButtonTextWidget(text: "Denies"),
            RadioButtonTextWidget(text: "Affirms"),
          ],
        ),
        SizedBox(height: 10.h),
        const Text("iii) Do you smoke?",
            style: TextStyle(fontWeight: FontWeight.bold)),
        const Row(
          children: [
            RadioButtonTextWidget(text: "Yes"),
            RadioButtonTextWidget(text: "No"),
          ],
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.4,
          child: InfoControllers(
              controller: TextEditingController(), label: "iii).1. How Much?"),
        ),
        const Text("iv) Do you get cold feet?",
            style: TextStyle(fontWeight: FontWeight.bold)),
        const Row(
          children: [
            RadioButtonTextWidget(text: "Yes"),
            RadioButtonTextWidget(text: "No"),
          ],
        ),
        SizedBox(height: 30.h),
        const Text("6. PAST MEDICAL HISTORY",
            style: TextStyle(fontWeight: FontWeight.bold)),
        ...List.generate(
          pastMedicalHistory.length,
          (index) => CheckboxTextWidget(text: pastMedicalHistory[index]),
        ),
        SizedBox(height: 30.h),
        const Text("7. PAST SURGICAL HISTORY",
            style: TextStyle(fontWeight: FontWeight.bold)),
        const Text("a) Any joint replacement surgeries?",
            style: TextStyle(fontWeight: FontWeight.bold)),
        const Row(
          children: [
            RadioButtonTextWidget(text: "Yes"),
            RadioButtonTextWidget(text: "No"),
          ],
        ),
        SizedBox(height: 10.h),
        const Text("b) Any other surgery?",
            style: TextStyle(fontWeight: FontWeight.bold)),
        const Row(
          children: [
            RadioButtonTextWidget(text: "Yes"),
            RadioButtonTextWidget(text: "No"),
          ],
        ),
      ],
    );
  }
}

class ChiefComplaintForm extends StatelessWidget {
  ChiefComplaintForm({
    super.key,
  });

  List<String> reasonForVisit = [
    "Select All",
    "Multiple Wound Evaluation ",
    "Sacral Wound Evaluation ",
    "RLE Wound Evaluation ",
    "LLE Wound Evaluation ",
    "RUE Wound Evaluation ",
    "LUE Wound Evaluation ",
    "Other",
  ];

  List<String> rationaleForHomeVisit = [
    "Select All",
    "Patient is home bound",
    "Patient is bed bound",
    "Other",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10.h),
        const Text("2. CHIEF COMPLAINT",
            style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10.h),
        SizedBox(height: 10.h),
        const Text("a) Reason for visit ",
            style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10.h),
        ...List.generate(
          reasonForVisit.length,
          (index) => Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (value) {},
              ),
              SizedBox(width: 10.w),
              Text(reasonForVisit[index],
                  style: const TextStyle(fontWeight: FontWeight.w500)),
            ],
          ),
        ),
        SizedBox(height: 10.h),
        const Text("b. Rationale for home visit",
            style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10.h),
        ...List.generate(
          rationaleForHomeVisit.length,
          (index) => Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (value) {},
              ),
              SizedBox(width: 10.w),
              Text(rationaleForHomeVisit[index],
                  style: const TextStyle(fontWeight: FontWeight.w500)),
            ],
          ),
        ),
      ],
    );
  }
}

class FocusWoundForm extends StatelessWidget {
  const FocusWoundForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10.h),
        const Text("1. FOCUSED WOUND EXAM",
            style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10.h),
        
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.4,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Placeholder(),
                  Text("i) Location:lower-leg-right",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("ii) Description:",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("View 2 Images",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold)),
                ],
              )),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("a.1 Wound Description",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Column(
                      children: [
                        const Text("i) Pictures of wounds",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        UploadImageButton(
                            w: MediaQuery.sizeOf(context).width * 0.2),
                      ],
                    ),
                    Column(
                      children: [
                        const Text("ii) Scribe wound images",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        UploadImageButton(
                            w: MediaQuery.sizeOf(context).width * 0.2),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.25,
                      child: InfoControllers(
                          controller: TextEditingController(),
                          label: "iii) Wound Type"),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.25,
                      child: InfoControllers(
                          controller: TextEditingController(),
                          label: "iv) Diagnosis Code"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.12,
                      child: InfoControllers(
                          controller: TextEditingController(),
                          label: "v) Length (cm)"),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.12,
                      child: InfoControllers(
                          controller: TextEditingController(),
                          label: "vi) Width (cm)"),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.25,
                      child: InfoControllers(
                          controller: TextEditingController(),
                          label: "vii) Depth"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.25,
                      child: InfoControllers(
                          controller: TextEditingController(),
                          label: "x) Maceration"),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.25,
                      child: InfoControllers(
                          controller: TextEditingController(),
                          label: "xi) Edema"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.25,
                      child: InfoControllers(
                          controller: TextEditingController(),
                          label: "xii) Erythema"),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.25,
                      child: InfoControllers(
                          controller: TextEditingController(),
                          label: "xiii) Ecchymosis"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.25,
                      child: InfoControllers(
                          controller: TextEditingController(),
                          label: "xiv) Undermining"),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.25,
                      child: InfoControllers(
                          controller: TextEditingController(),
                          label: "xv) Tunneling"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.25,
                      child: InfoControllers(
                          controller: TextEditingController(),
                          label: "xvi) Pain"),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.25,
                      child: InfoControllers(
                          controller: TextEditingController(),
                          label: "xvii) Description"),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.4,
                  child: InfoControllers(
                      controller: TextEditingController(),
                      label: "xviii) Location"),
                ),
                SizedBox(height: 10.h),
                const Text("xix) What is the age of the wound?",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.12,
                      child: InfoControllers(
                          controller: TextEditingController(),
                          label: "a) Years"),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.12,
                      child: InfoControllers(
                          controller: TextEditingController(),
                          label: "b) Months"),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.12,
                      child: InfoControllers(
                          controller: TextEditingController(),
                          label: "c) Weeks "),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                const Text(
                    "xx) What treatment have you had for this wound (by self or other)?",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.12,
                      child: InfoControllers(
                          controller: TextEditingController(),
                          label: "a) Treatment"),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.12,
                      child: InfoControllers(
                          controller: TextEditingController(), label: "b) By"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.25,
                      child: InfoControllers(
                          controller: TextEditingController(),
                          label:
                              "xxi) Any swelling, redness, warmth, or foul odor?"),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.25,
                      child: InfoControllers(
                          controller: TextEditingController(),
                          label: "xxii) Who else has been treating the wound?"),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                const Text("xxiii) CARE PLAN  ",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 10.h),
                TextFormField(
                  // readOnly: widget.label == 'Store Code' ? true : false,
                  cursorColor: Colors.black,
                  cursorHeight: 16,
                  style: const TextStyle(fontSize: 13),
                  maxLines: 40,
                  decoration: InputDecoration(
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black45),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.4,
                  child: InfoControllers(
                      controller: TextEditingController(),
                      label: "xxiv) Others"),
                ),
              ],
            ),
          ),
        ]),
      ],
    );
  }
}

class RadioButtonTextWidget extends StatelessWidget {
  const RadioButtonTextWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          groupValue: false,
          value: false,
          onChanged: (value) {},
        ),
        const SizedBox(width: 10),
        Text(text, style: const TextStyle(fontWeight: FontWeight.w500)),
      ],
    );
  }
}

class CheckboxTextWidget extends StatelessWidget {
  const CheckboxTextWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: false,
          onChanged: (value) {},
        ),
        SizedBox(width: 10.w),
        Text(text, style: const TextStyle(fontWeight: FontWeight.w500)),
      ],
    );
  }
}

class InfoControllers extends StatefulWidget {
  final String label;
  final int maxLines;
  final TextEditingController controller;
  const InfoControllers(
      {super.key,
      this.maxLines = 1,
      required this.controller,
      required this.label});

  @override
  State<InfoControllers> createState() => _InfoControllersState();
}

class _InfoControllersState extends State<InfoControllers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.label,
              style: const TextStyle(fontWeight: FontWeight.bold)),
          Container(
              height: 60,
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: TextFormField(
                // readOnly: widget.label == 'Store Code' ? true : false,
                cursorColor: Colors.black,
                cursorHeight: 16,
                style: TextStyle(
                  fontSize: 13,
                  color:
                      widget.label == 'Store Code' ? Colors.grey : Colors.black,
                ),
                controller: widget.controller,
                maxLines: widget.maxLines,
                decoration: InputDecoration(
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black45),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

class PatientInfoCard extends StatelessWidget {
  const PatientInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(color: Colors.blue.shade200),
      child: const Row(
        children: [
          Icon(Icons.info),
          SizedBox(width: 20),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InfoTile(
                      label: "Patient Name",
                      info: "Smith, Frank",
                    ),
                    SizedBox(width: 20),
                    InfoTile(
                      label: "APS",
                      info: "Smith, Frank",
                    ),
                    SizedBox(width: 20),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InfoTile(
                      label: "Patient Dob",
                      info: "09/03/1993",
                    ),
                    SizedBox(width: 20),
                    InfoTile(
                      label: "Medical Director:",
                      info: "Akber, Provider",
                    ),
                    SizedBox(width: 20),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InfoTile(
                      label: "Patient MRN",
                      info: "Smith, Frank",
                    ),
                    SizedBox(width: 20),
                    InfoTile(
                      label: "Encounter Number:",
                      info: "1",
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  const InfoTile({
    required this.info,
    required this.label,
    super.key,
  });

  final String label;
  final String info;

  @override
  Widget build(BuildContext context) {
    return RichText(
      overflow: TextOverflow.clip,
      maxLines: 4,
      text: TextSpan(children: [
        TextSpan(
          text: "$label :",
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        TextSpan(text: info, style: const TextStyle(color: Colors.black)),
      ]),
    );
  }
}

class UploadImageButton extends StatelessWidget {
  const UploadImageButton({super.key, required this.w});

  final double w;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: 70.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black)),
      child: Row(
        children: [
          const Icon(Icons.cloud_upload),
          SizedBox(
            width: 20.w,
          ),
          Text(
            "Upload Images",
            style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
