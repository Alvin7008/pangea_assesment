import 'package:flutter/material.dart';

import '../model/business_logic.dart';

List<BusinessLogic> busineesLogicList = [
  BusinessLogic(
      colour: const Color(0xffd68226),
      iconName: Icons.video_camera_back_outlined,
      logicName: "Live Consultation",
      description: "Live consultation session with any provider"),
  BusinessLogic(
      colour: const Color(0xff72bb53),
      iconName: Icons.calendar_today_outlined,
      logicName: "Book Appointment",
      description: "Book your activity with any registered doctor"),
  BusinessLogic(
      colour: const Color(0xff388ae5),
      iconName: Icons.description,
      logicName: "My IPS",
      description: "View your IPS file"),
  BusinessLogic(
      colour: const Color(0xff71adf3),
      iconName: Icons.qr_code,
      logicName: "My QR code",
      description: "Display your QR code to any provider"),
  BusinessLogic(
      colour: const Color(0xffc0c0c0),
      iconName: Icons.cloud_upload,
      logicName: "Upload Report/Files",
      description: "Upload clinical document in your IPS"),
  BusinessLogic(
      colour: const Color(0xffc0c0c0),
      iconName: Icons.manage_accounts,
      logicName: "Authorize Access",
      description: "Give permission to update UMF to any provider"),
  BusinessLogic(
      colour: const Color(0xff4dd7fb),
      iconName: Icons.receipt,
      logicName: "My Prescriptions",
      description: "VIew all your prescriptions"),
  BusinessLogic(
      colour: const Color(0xffff8351),
      iconName: Icons.description_outlined,
      logicName: "My Clinical Reports",
      description: "View all your past clinical reports"),
  BusinessLogic(
      colour: const Color(0xff71adf3),
      iconName: Icons.event,
      logicName: "My Calendar",
      description: "View all upcomming events and prescription"),
  BusinessLogic(
      colour: const Color(0xff388ae5),
      iconName: Icons.payment,
      logicName: "Insurance Card",
      description: "View all your insurance details"),
];
