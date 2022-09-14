import 'package:workbook/constants/color_constants.dart';
import 'package:workbook/constants/routes.dart';
import 'package:workbook/models/task_item.dart';

var tasksList = [
  TaskItem(
    title: 'I want to design a birthday card for my daughter\'s birthday.',
    country: 'Australia',
    status: 'Online',
    offers: 67,
    comments: 200,
    price: 200,
  ),
  TaskItem(
    title: 'I wants to install AC in my room, it is of 2 ton AC.',
    country: 'Australia',
    status: 'Onsite',
    offers: 67,
    comments: 200,
    price: 300,
  ),
  TaskItem(
    title: 'I want to design a birthday card for my daughter\'s birthday.',
    country: 'Australia',
    status: 'Online',
    offers: 67,
    comments: 200,
    price: 200,
  ),
  TaskItem(
    title: 'I wants to install AC in my room, it is of 2 ton AC.',
    country: 'Australia',
    status: 'Onsite',
    offers: 67,
    comments: 200,
    price: 300,
  ),
  TaskItem(
    title: 'I want to design a birthday card for my daughter\'s birthday.',
    country: 'Australia',
    status: 'Online',
    offers: 67,
    comments: 200,
    price: 200,
  ),
  TaskItem(
    title: 'I wants to install AC in my room, it is of 2 ton AC.',
    country: 'Australia',
    status: 'Onsite',
    offers: 67,
    comments: 200,
    price: 300,
  ),
];

List<TaskItem> myTasks = [
  TaskItem(
    title: 'I wants to develop a Application like a booking app.',
    status: 'Completed',
    color: ColorConstants.darkGreen,
    offers: 67,
    comments: 200,
    price: 2000,
  ),
  TaskItem(
    title: 'I wants to develop a Application like a booking app.',
    status: 'Cancelled',
    color: ColorConstants.brownishRed,
    offers: 67,
    comments: 200,
    price: 2000,
  ),
  TaskItem(
    title: 'I wants to develop a Application like a booking app.',
    status: 'Completed',
    color: ColorConstants.darkGreen,
    offers: 67,
    comments: 200,
    price: 2000,
  ),
  TaskItem(
    title: 'I wants to develop a Application like a booking app.',
    status: 'In Progress',
    color: ColorConstants.primaryColor,
    offers: 67,
    comments: 200,
    price: 2000,
  ),
  TaskItem(
    title: 'I wants to develop a Application like a booking app.',
    status: 'In Progress',
    color: ColorConstants.primaryColor,
    offers: 67,
    comments: 200,
    price: 2000,
  ),
];

List<TaskItem> myJobs = [
  TaskItem(
    title: 'I wants to develop a Application like a booking app.',
    status: 'Completed',
    color: ColorConstants.darkGreen,
    offers: 67,
    comments: 200,
    price: 300,
  ),
  TaskItem(
    title: 'I wants to develop a Application like a booking app.',
    status: 'Deleted',
    color: ColorConstants.brownishRed,
    offers: 67,
    comments: 200,
    price: 300,
  ),
  TaskItem(
    title: 'I wants to develop a Application like a booking app.',
    status: 'Completed',
    color: ColorConstants.darkGreen,
    offers: 67,
    comments: 200,
    price: 300,
  ),
  TaskItem(
    title: 'I wants to develop a Application like a booking app.',
    status: 'In Progress',
    color: ColorConstants.primaryColor,
    offers: 67,
    comments: 200,
    price: 300,
  ),
];

List<String> categoryItems = [
  'Graphic Design',
  'Mobile Application Development',
  'Website Development',
  'Data Entry',
];

List<Map<String, dynamic>> moreListTileData = [
  {
    'icon': 'assets/svgs/ic_profile.svg',
    'title': 'Your Profile',
  },
  {
    'icon': 'assets/svgs/ic_payment_details.svg',
    'title': 'Payment Details',
  },
  {
    'icon': 'assets/svgs/ic_transaction_history.svg',
    'title': 'Transaction History',
  },
  {
    'icon': 'assets/svgs/ic_document.svg',
    'title': 'Document Verification',
    'screenLink': Routes.documentVerificationScreen,
  },
  {
    'icon': 'assets/svgs/ic_favorite.svg',
    'title': 'Favorite',
  },
  {
    'icon': 'assets/svgs/ic_change_password.svg',
    'title': 'Change Password',
    'screenLink': Routes.changePasswordScreen,
  },
  {
    'icon': 'assets/svgs/ic_referrals.svg',
    'title': 'Referrals',
  },
  {
    'icon': 'assets/svgs/ic_notification.svg',
    'title': 'Notifications',
  },
  {
    'icon': 'assets/svgs/ic_help.svg',
    'title': 'Help/FAQ Section',
  },
  {
    'icon': 'assets/svgs/ic_customer_support.svg',
    'title': 'Customer Support',
    'screenLink': Routes.customerSupportScreen,
  },
  {
    'icon': 'assets/svgs/ic_logout.svg',
    'title': 'Log Out',
  },
];

List customerSupport = [
  {
    'title': 'I have an issue during uploading my documents.',
    'description':
        'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    'status': 'Resolved',
    'days': '3',
    'color': ColorConstants.darkGreen,
  },
  {
    'title': 'I have an issue during uploading my documents.',
    'description':
        'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    'status': 'Pending',
    'days': '3',
    'color': ColorConstants.primaryColor,
  },
  {
    'title': 'I have an issue during uploading my documents.',
    'description':
        'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    'status': 'Cancelled',
    'days': '3',
    'color': ColorConstants.brownishRed,
  },
];
