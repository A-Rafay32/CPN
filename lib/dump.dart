// InfoControllers(
//                   controller: TextEditingController(),
//                   label: "3. Subjective, Patient Progress"),
//               const Text("4. Education",
//                   style: TextStyle(fontWeight: FontWeight.bold)),
//               const Text("a. Patient was advised and encouraged to:",
//                   style: TextStyle(fontWeight: FontWeight.bold)),
//               const Text("i) Home Wound Care",
//                   style: TextStyle(fontWeight: FontWeight.bold)),
//               ...List.generate(
//                 4,
//                 (index) => Row(
//                   children: [
//                     Checkbox(
//                       value: false,
//                       onChanged: (value) {},
//                     ),
//                     const SizedBox(width: 10),
//                     const Text("Avoid Pressure onto the wound ",
//                         style: TextStyle(fontWeight: FontWeight.w500)),
//                   ],
//                 ),
//               ),
//               const Text(
//                   "ii) Smoking education verbally discussed with patient. ",
//                   style: TextStyle(fontWeight: FontWeight.bold)),
//               ...List.generate(
//                 4,
//                 (index) => Row(
//                   children: [
//                     Checkbox(
//                       value: false,
//                       onChanged: (value) {},
//                     ),
//                     const SizedBox(width: 10),
//                     const Text("Avoid Pressure onto the wound ",
//                         style: TextStyle(fontWeight: FontWeight.w500)),
//                   ],
//                 ),
//               ),
//               const Text(
//                   "iii) Hydrate with >5 glasses H20; limit sugary drinks and processed foods.",
//                   style: TextStyle(fontWeight: FontWeight.bold)),
//               ...List.generate(
//                 4,
//                 (index) => Row(
//                   children: [
//                     Checkbox(
//                       value: false,
//                       onChanged: (value) {},
//                     ),
//                     const SizedBox(width: 10),
//                     const Text("Avoid Pressure onto the wound ",
//                         style: TextStyle(fontWeight: FontWeight.w500)),
//                   ],
//                 ),
//               ),
//               InfoControllers(
//                   controller: TextEditingController(), label: "b) Others "),
//               const Text("5. DRAW LABS",
//                   style: TextStyle(fontWeight: FontWeight.bold)),
//               const CheckboxTextWidget(text: "Select All"),
//               const Row(
//                 children: [
//                   CheckboxTextWidget(text: "CBC"),
//                   CheckboxTextWidget(text: "CMP"),
//                   CheckboxTextWidget(text: "BMP"),
//                 ],
//               ),
//               const Row(
//                 children: [
//                   CheckboxTextWidget(text: "Prealbumin"),
//                   CheckboxTextWidget(text: "Albumin"),
//                 ],
//               ),
//               const Row(
//                 children: [
//                   CheckboxTextWidget(text: "HgbAlC"),
//                   CheckboxTextWidget(text: "Other"),
//                 ],
//               ),
//               const Text("6. WILL BE SCHEDULED FOR : ",
//                   style: TextStyle(fontWeight: FontWeight.bold)),
//               const RadioButtonTextWidget(
//                   text: "Advanced wound care - Assessment"),
//               const RadioButtonTextWidget(
//                   text: "Advanced wound care - Debridement"),
//               const Row(
//                 children: [
//                   RadioButtonTextWidget(
//                       text: "Advanced wound care - CTP Placement"),
//                   SizedBox(width: 20),
//                   RadioButtonTextWidget(text: "Discontinue Service "),
//                 ],
//               ),
//               const Divider(),