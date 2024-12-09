# Static and Dynamic Analysis Project

## Introduction

This project focuses on the static and dynamic analysis of Android applications using FlowDroid, a widely-used static taint analysis tool. The goal is to identify potential data leaks and evaluate the compliance of apps with privacy requirements. The analysis includes various configurations and hardware setups to ensure comprehensive results.

## Project Structure

The project is organized into several directories and files:

```
Static and dynamic project/
│
├── README.md
├── SourcesAndSinks.txt
│
├── Android-11/
│   └── android.jar
│
├── output_youdeliver-decompiled/
│   ├── AndroidManifest.xml
│   ├── apktool.yml
│   ├── assets/
│   ├── original/
│   ├── res/
│   ├── smali/
│   └── unknown/
│
├── R1/
│   ├── r1SourceAndSinks.txt
│   └── r1Tado.txt
│
├── R2/
│   ├── r2-2delivery.txt
│   ├── r2delhiMetro.txt
│   ├── r2Tado.txt
│   ├── r2-2news.txt
│   ├── r2hawaiitxt
│   ├── r2walkme.txt
│   ├── r2-2SourceAndSkins
│   ├── r2SourceAndSinks.txt
│   └── r2your-delivery.txt
│
├── Session1-Optional-sootOutput/
│   ├── delhi-metro.txt
│   ├── imo-android.txt
│   ├── mynt.txt
│   ├── tado.txt
│   ├── wooxhome.txt
│   ├── hawaii.txt
│   ├── linko.txt
│   ├── nzco.txt
│   ├── walkme-azores.txt
│   └── your0delivery.txt
│
└── Session1-SootOutPut/
    ├── apk101200.txt
    ├── apk160.txt
    ├── apk3300.txt
    ├── apk5120xxxx
```

## Section 1: Introduction to FlowDroid for Taint Analysis

### Research Android App Components

Android applications consist of key components (Activity, Service, Broadcast Receiver, Content Provider) that interact to form the functional structure of an app. Each component serves a specific purpose, and understanding their roles and lifecycles is essential for analyzing Android apps effectively.

### Understand FlowDroid and Configuration Options

FlowDroid is a widely-used static taint analysis tool specifically designed for Android applications. It helps identify how sensitive data ("taints") flows through an application by tracing its sources and sinks. The tool is highly configurable, allowing users to adjust settings to optimize analysis for specific requirements. Configuration options include the following:

- **Timeout settings**: Shorter timeouts (e.g., 1 minute) provide faster results but may miss complex data flows and vice versa.
- **Memory and resource allocation**: We can adjust memory usage settings to handle large APKs or complex apps.
- **Flow sinks and sources**: We can specify custom sources (e.g., location APIs) and sinks (e.g., network libraries) for taint tracking.
- **Granularity and depth**: Options to include or exclude library code (e.g., third-party libraries). Also, we can define how deeply the tool follows method calls.
- **Output options**: FlowDroid provides raw analysis results, which can be saved in various formats (e.g., plain text, XML).

### Identify Sources and Sinks

- **Source**: Points in the code where sensitive data originates. Examples:
  - User input (e.g., from forms, text fields)
  - Device data (e.g., location, IMEI, contacts, photos)
  - API calls that provide sensitive information (e.g., `LocationManager.getLastKnownLocation()`)

- **Sink**: Points in the code where data is used in a potentially unsafe or sensitive way. Examples:
  - Network calls (e.g., HTTP POST requests via `HttpURLConnection` or third-party libraries like OkHttp)
  - File writes (e.g., writing data to external storage or logs)
  - System logs (e.g., `Log.d`, `Log.e` in Android)
  - Sending data via SMS or email

### Run FlowDroid Analysis

To perform the analysis of the provided apps, FlowDroid has been installed through the following link: [FlowDroid GitHub](https://github.com/secure-software-engineering/FlowDroid).

We have downloaded a pre-built JAR file with release version 2.13. Moreover, since we have Android platforms and JDK (we used Java v17) in the VM provided by professors, we did not need that. However, for the extra task, we have installed these dependencies.

We have used the command-line tool to run the data flow tracker:

```sh
java -jar soot-infoflow-cmd/target/soot-infoflow-cmd-jar-with-dependencies.jar \
-a <APK File> \
-p <Android JAR folder> \
-s <SourcesSinks file>
```

The Android JAR folder is the "platforms" directory inside the Android SDK installation folder (we used Android 11). The definition file for sources and sinks defines what shall be treated as a source of sensitive information and what shall be treated as a sink that can possibly leak sensitive data to the outside world. For this, we have used the default file "SourcesAndSinks.txt" in the "soot-infoflow-android" folder as a starting point from GitHub. Below is an example of implementing analysis for the apps and saving output in a txt file to make it easier to see outputs (since on the terminal it is not convenient).

```sh
2>&1: Redirects error output (stderr) to the same file as standard output (stdout). When running tools like FlowDroid, errors (stderr) may contain important diagnostic information (e.g., warnings, missing files). Without 2>&1, the error messages will not be captured in the output file.
```

Each APK has been analyzed in three periods: 1 minute (60 sec), 5 minutes (300 sec), and 20 minutes (1200 sec).

### Document Hardware and Configuration

The analysis was conducted in a virtualized environment (VM provided by professor) configured as follows:

- **Operating System**: Ubuntu 64-bit
- **Allocated Resources**:
  - **RAM**: 4096 MB (4 GB)
  - **CPU**: 4 cores allocated with a CPU usage cap of 100%
  - **Disk Space**: 20 GB Virtual Disk (SATA interface)
  - **Graphics**: Controller: VMSVGA, Video Memory: 16 MB
  - **Audio**: Windows Audio Session with the ICH AC97 controller
  - **Networking**: Intel PRO/1000 MT Desktop adapter (NAT mode)
  - **USB Support**: Enabled for OHCI and EHCI controllers, with no active USB filters

### Analyze and Discuss Results

All the 10 APKs were analyzed with different timeouts and the results can be observed in Table 1 below.

| №  | App                         | Number of leaks (60 sec) | Number of leaks (300 sec) | Number of leaks (1200 sec) |
|----|-----------------------------|--------------------------|---------------------------|---------------------------|
| 1  | com.delhi.metro.dtc         | 3                        | 3                         | 3                         |
| 2  | com.hawaiianairlines.app    | 33                       | 33                        | 33                        |
| 3  | com.imo.android.imoim       | 4                        | 4                         | 4                         |
| 4  | com.tado                    | 21                       | 21                        | 21                        |
| 5  | com.walkme.azores.new       | 4                        | 4                         | 4                         |
| 6  | com.wooxhome.smart          | 0                        | 0                         | 0                         |
| 7  | com.yourdelivery.pyszne     | 5                        | 5                         | 5                         |
| 8  | linko.home                  | 24                       | 24                        | 24                        |
| 9  | mynt.app                    | 11                       | 11                        | 11                        |
| 10 | nz.co.stuff.android.news    | 26                       | 26                        | 26                        |

**Table 1 – Analysis results**

Since there are a lot of leaks and we are limited by the number of pages in the report, a couple of them will be described below.

#### Description of Potential Data Leaks

**com.delhi.metro.dtc**:
- **Source**:
  ```java
  $d0 = virtualinvoke $r6.<android.location.Location: double getLatitude()>. $d0 = virtualinvoke $r6.<android.location.Location: double getLongitude()>
  ```
  - Captures location data (`getLatitude()` and `getLongitude()`).

- **Sink**:
  ```java
  staticinvoke <android.util.Log: int d(java.lang.String,java.lang.String)>("sandeep", $r8)
  ```
  - Data is being logged using `android.util.Log`.

Logging location data (latitude and longitude) is a serious concern. Even if used for debugging, exposing such data via logs is risky, especially if the app interacts with external systems that can access logs. This is a genuine data leak.

**com.hawaiianairlines.app**:
- **Source**:
  ```java
  virtualinvoke $r8.<android.net.wifi.WifiInfo: java.lang.String getSSID()>
  ```
  - Sensitive data: Wi-Fi SSID.

- **Sink**:
  ```java
  virtualinvoke $r0.<androidx.activity.ComponentActivity: void startActivityForResult(android.content.Intent,int)>
  ```
  - Found in multiple activities such as `MediaActivity`, `FavoritesActivity`, and `ShoppingActivity`.

Passing Wi-Fi SSID between activities might indicate functional requirements such as pairing or contextual actions. However, this practice risks exposing sensitive data if the Intent is not securely handled (e.g., broadcasting).

**com.imo.android.imoim**:
- **Source**:
  ```java
  virtualinvoke $r8.<android.content.pm.PackageManager: java.util.List queryBroadcastReceivers(android.content.Intent,int)>
  ```
  - Information queried from the `PackageManager`, potentially related to broadcast receivers.

- **Sink**:
  ```java
  staticinvoke <android.util.Log: int i(java.lang.String,java.lang.String)>("AppsFlyer_6.11.0", $r2)
  ```
  - Data is logged using `android.util.Log`.

Querying broadcast receivers and logging the results can be a debugging practice but risks exposing sensitive app-related information in production. It can be a potential data leak, as app-level data should not be logged in production.

**com.tado**:
- **Source**:
  ```java
  virtualinvoke $r9.<java.net.HttpURLConnection: java.io.InputStream getInputStream()>
  ```
  - Reads data from an HTTP connection's input stream.

- **Sink**:
  ```java
  staticinvoke <android.util.Log: int d(java.lang.String,java.lang.String) > ("AccountResponse", $r1)
  ```
  - Logs sensitive data as part of API response debugging.

Debugging API responses by logging input streams risks exposing sensitive data, especially in production environments. It may be considered as a genuine data leak.

- **Source**:
  ```java
  r0.<com.tado.android.installation.CreateAccountActivity: android.view.View findViewById(int)>
  ```
  - Extracts UI elements during account creation.

- **Sink**:
  ```java
  $r12.<java.io.OutputStream: void write(byte[])>
  ```
  - Writes data to an output stream.

Writing UI data to an output stream might be expected during data submission (e.g., forms). Validation of data use is required. It is unlikely to be a data leak, assuming proper usage.

**com.walkme.azores.new**:
- **Source**:
  ```java
  $r4.<java.util.Locale: java.lang.String getCountry()>
  ```
  - Retrieves the user's country code from the system locale.

- **Sink**:
  ```java
  interfaceinvoke $r7.<android.content.SharedPreferences$Editor: android.content.SharedPreferences$Editor putString(java.lang.String,java.lang.String)>
  ```
  - Stores the country code in shared preferences.

Saving the user's locale (e.g., country code) is a common functionality. However, the security of shared preferences must be evaluated. If preferences are secured, it is unlikely to be a data leak.

**com.linko.home**:
- **Source**:
  ```java
  $r9 = virtualinvoke $r1.<java.io.File: java.io.File getAbsoluteFile()>
  ```
  - Accesses the absolute file path.

- **Sink**:
  ```java
  virtualinvoke $r16.<java.io.FileOutputStream: void write(byte[])>
  ```
  - Writes the file to an output stream.

Writing absolute file paths to output streams may expose sensitive file system data (potential data leak) if improperly handled.

- **Source**:
  ```java
  $r10 = interfaceinvoke $r13.<android.database.Cursor: java.lang.String getString(int)>
  ```
  - Retrieves data from a database cursor.

- **Sink**:
  ```java
  virtualinvoke $r6.<android.os.Bundle: void putString(java.lang.String,java.lang.String)>
  ```
  - Stores sensitive data in a Bundle.

Storing database query results in a Bundle without encryption can lead to privacy concerns (genuine data leak).

**com.mynt.app**:
- **Source**:
  ```java
  $r21 = virtualinvoke $r19.<android.content.pm.PackageManager: java.util.List nz.co.stuff.android.news:queryIntentServices(android.content.Intent,int)>
  ```
  - Retrieves information about services from the package manager.

- **Sink**:
  ```java
  staticinvoke <android.util.Log: int d(java.lang.String,java.lang.String)>
  ```
  - Logs sensitive service query results.

Logging service query results may expose app-specific behaviors and configurations, posing a security risk (genuine data leak).

**nz.co.stuff.android.news**:
- **Source**:
  ```java
  $r7 = interfaceinvoke $r6.<android.database.Cursor: java.lang.String getString(int)>
  ```
  - Retrieves data from a database cursor.

- **Sink**:
  ```java
  virtualinvoke $r3.<java.io.Writer: void write(java.lang.String,int,int)>($r2, 0, $i0)
  ```
  - Writes the data into a file.

Writing sensitive data retrieved from a database to a file might align with app functionality but requires strong data protection measures. It can be a potential data leak, depending on the file storage mechanism's security.

### Evaluate the Impact of Timeout

Since the number of leaks is consistent across different timeout values, it indicates that the FlowDroid analysis is efficient and likely completes its processing within the shortest timeout. The lack of additional leaks in longer timeout durations suggests that no additional taint flows are detected after the initial analysis.

It can lead to the judgment that the absence of new data leaks with extended timeouts implies that the potential leaks described in the previous analyses are genuine and not artifacts of incomplete analysis due to timeout constraints.

### [Optional] Repeat with Different Hardware Setup

For this part, actually two different hardware were used. The first one is:

The second is VM, provided by professor but with different JDK (11), android.jar (v24) and settings:


| №  | App                         | Ubuntu 24.04 | Professor’s VM |
|----|-----------------------------|--------------|----------------|
| 1  | com.delhi.metro.dtc         | 3            | 3              |
| 2  | com.hawaiianairlines.app    | 33           | 27             |
| 3  | com.imo.android.imoim       | 4            | 4              |
| 4  | com.tado                    | 21           | 14             |
| 5  | com.walkme.azores.new       | 4            | 4              |
| 6  | com.wooxhome.smart          | 0            | 0              |
| 7  | com.yourdelivery.pyszne     | 5            | 5              |
| 8  | linko.home                  | 24           | 24             |
| 9  | mynt.app                    | 11           | 10             |
| 10 | nz.co.stuff.android.news    | 26           | 26             |

**Table 2 – Optional task analysis results (1200 sec)**
