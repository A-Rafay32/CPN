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
              const ChiefComplaintForm(),
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
              const PatientHistoryForm(),
              SizedBox(height: 10.h),
              const SocialHistoryFrom(),
              const GeneralPhysicalExam(),
              const EducationForm(),
              SizedBox(height: 200.h),
            ],
          ),
        ),
      ),
    );
  }
}

class EducationForm extends StatelessWidget {
  const EducationForm({
    super.key,
  });

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
          6,
          (index) =>
              const CheckboxTextWidget(text: "Avoid pressure on the wound "),
        ),
        SizedBox(height: 10.h),
        const Text("ii) Smoking education verbally discussed with patient.",
            style: TextStyle(fontWeight: FontWeight.bold)),
        ...List.generate(
          6,
          (index) =>
              const CheckboxTextWidget(text: "Avoid pressure on the wound "),
        ),
        SizedBox(height: 10.h),
        const Text(
            "iii) Hydrate with >5 glasses H20; limit sugary drinks and processed foods.",
            style: TextStyle(fontWeight: FontWeight.bold)),
        ...List.generate(
          6,
          (index) =>
              const CheckboxTextWidget(text: "Avoid pressure on the wound "),
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.4,
          child: InfoControllers(
              controller: TextEditingController(), label: "b) Others:"),
        ),
        const Text("11. Follow-up *",
            style: TextStyle(fontWeight: FontWeight.bold)),
        ...List.generate(
          6,
          (index) =>
              const RadioButtonTextWidget(text: "Avoid pressure on the wound "),
        ),
        SizedBox(height: 10.h),
        const Text("a) Draw labs *",
            style: TextStyle(fontWeight: FontWeight.bold)),
        ...List.generate(
          6,
          (index) =>
              const CheckboxTextWidget(text: "Avoid pressure on the wound "),
        ),
        SizedBox(height: 10.h),
        const Text("b) Order Ankle Brachial Index test?",
            style: TextStyle(fontWeight: FontWeight.bold)),
        const Row(
          children: [
            RadioButtonTextWidget(text: "Yes"),
            RadioButtonTextWidget(text: "No"),
          ],
        ),
        SizedBox(height: 10.h),
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
  const GeneralPhysicalExam({
    super.key,
  });

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
        ...List.generate(
            3, (index) => const RadioButtonTextWidget(text: "Appears well")),
        const Text("b) Extremities ",
            style: TextStyle(fontWeight: FontWeight.bold)),
        const Text("i) Vascular of the foot  ",
            style: TextStyle(fontWeight: FontWeight.bold)),
        ...List.generate(
            3, (index) => const RadioButtonTextWidget(text: "Appears well")),
        SizedBox(height: 10.h),
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
        SizedBox(height: 30.h),
      ],
    );
  }
}

class SocialHistoryFrom extends StatelessWidget {
  const SocialHistoryFrom({
    super.key,
  });

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
          5,
          (index) => const CheckboxTextWidget(text: "Select All"),
        ),
        const Text("b) Alcohol?"),
        const Row(
          children: [
            RadioButtonTextWidget(text: "Yes"),
            RadioButtonTextWidget(text: "No")
          ],
        ),
        SizedBox(height: 10.h),
        const Text("c) Nutrition"),
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
  const PatientHistoryForm({
    super.key,
  });

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
        SizedBox(height: 10.h),
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
        SizedBox(height: 10.h),
        const Text("6. PAST MEDICAL HISTORY",
            style: TextStyle(fontWeight: FontWeight.bold)),
        ...List.generate(
          6,
          (index) => const CheckboxTextWidget(text: "Select All"),
        ),
        SizedBox(height: 10.h),
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
  const ChiefComplaintForm({
    super.key,
  });

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
          8,
          (index) => Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (value) {},
              ),
              SizedBox(width: 10.w),
              const Text("Avoid Pressure onto the wound ",
                  style: TextStyle(fontWeight: FontWeight.w500)),
            ],
          ),
        ),
        SizedBox(height: 10.h),
        const Text("b. Rationale for home visit",
            style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10.h),
        ...List.generate(
          8,
          (index) => Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (value) {},
              ),
              SizedBox(width: 10.w),
              const Text("Avoid Pressure onto the wound ",
                  style: TextStyle(fontWeight: FontWeight.w500)),
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
              child: const Placeholder()),
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
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.25,
                      child: InfoControllers(
                          controller: TextEditingController(),
                          label: "i) Pictures of wounds"),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.25,
                      child: InfoControllers(
                          controller: TextEditingController(),
                          label: "ii) Scribe wound images"),
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
