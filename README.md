
# Unified Medical File 

The UMF app allows to maintian the patients clinical information in ONE Place. It allows patients to Book, consult and check all the medical history on a single tap.
## How to Use

**Step 1:**

Download or clone this repo by using the link below:

```
https://github.com/Alvin7008/pangea_assesment.git
```
    
**Step 2:**

Open an IOS/Android emulator in your computer, then go to project root and execute the following command in console. If you have only one device is connected, just use the command flutter run to install your app into the device. 


```
flutter run
```

if have more than one device connected; please specify a device with the '-d <deviceId>' flag, or use '-d all' to act on all devices.
```
flutter run -d9887fc41594630315a
```


## UMF Features:

* Live Consultation
* Book Appointment
* My IPS
* QR Code
* Upload Report
* Authorize Access
* Prescriptions
* Clinical Reports
* Calendar
* Insurance Card

### Folder Structure
Here is the core folder structure which flutter provides.

```
flutter-app/
|- android
|- build
|- ios
|- lib
|- test
```

Here is the folder structure we have been using in this project

```
lib/
|- Components/
|- model/
|- view/
|- view/screens
|- view/widgets

```


Now, lets dive into the lib folder which has the main code for the application.

```
1- Components - All the application level constants are defined in this directory with-in their respective files. This directory contains the constants for theme and List of Business Logics.
2- Model - Contains the model class for business logic.
3- View — This directory contains all the ui of your application. Each screen is located in the folder `Screen`. All the screen specific widgets will be placed in `widgets` directory.
4- main.dart - This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.
```

