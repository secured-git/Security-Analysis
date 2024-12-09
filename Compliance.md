
## Section 2: Results and Insights Regarding the Two Privacy Requirements

### R1: To verify compliance with R1, we used FlowDroid, a static taint analysis tool, to analyze the com.tado.apk application. The strategy involved the following steps:

#### Selection of Sources and Sinks

- **Sources**: We identified methods that retrieve location data as sources. These include methods from the `android.location.Location` and `android.location.LocationManager` classes.
- **Sinks**: We identified methods that send data over the network as sinks. These include methods from the `java.net` and `org.apache.http` packages.

#### Configuration of FlowDroid

We configured FlowDroid to use the selected sources and sinks by creating a `r1SourcesAndSinks.txt` file.

We increased the memory allocation to handle the analysis of the large app.

#### Running the Analysis

We executed FlowDroid:

```sh
java -Xmx4g -jar soot-infoflow-cmd-2.13.0-jar-with-dependencies.jar
```

#### Results of the Analysis for R1

The analysis found one potential data leak in the `com.tado.apk` application. The details of the data leak are as follows:

- **Sink**: The sink method `java.net.HttpURLConnection: java.io.OutputStream getOutputStream()` in the method `com.tado.android.client.LocalAPICall: com.tado.android.responses.Response doInBackground(java.lang.Void[])` was called with values from the sources.
- **Sources**: The sources involved were:
  ```java
  $r6 = virtualinvoke r0.<com.tado.android.LoginActivity: android.view.View findViewById(int)>(2131755329) in method <com.tado.android.LoginActivity: void onCreate(android.os.Bundle)>
  $r6 = virtualinvoke r0.<com.tado.android.LoginActivity: android.view.View findViewById(int)>(2131755331) in method <com.tado.android.LoginActivity: void onCreate(android.os.Bundle)>
  ```

#### Assessment of Genuine Leaks

The identified data leak involves the `HttpURLConnection` class sending data over the network. This suggests that location data might be sent outside the app. To determine whether this data flow is genuine, we need to consider the app's expected behavior. If the app is designed to send location data to a server for legitimate purposes (e.g., location-based services), it might be considered normal. However, if the data is sent without user consent or for unauthorized purposes, it would be a data leak.

#### Observations

- **Potential Data Leak**: The analysis identified one potential data leak involving the `HttpURLConnection` class sending data over the network. This suggests that location data might be sent outside the app.
- **Compliance with R1**: To ensure compliance with R1, the app should not send location data outside the app without user consent. The identified data leak needs further investigation to determine whether it is legitimate or a violation of privacy requirements.
- **Limitations of Analysis**: The analysis faced challenges related to memory and performance issues, abstract and interface classes, and missing callback methods. These challenges might have affected the completeness and accuracy of the results.

### R2: To verify if the app `com.yourdelivery.pyszne.apk` provides a mechanism for account deletion

#### Sources and Sinks File

--> R2 Folder

The output does not directly indicate the presence of account deletion functionality. However:

- No sensitive data flows were identified leading to a potential account deletion method. This means the tool either failed to capture such flows, or they don’t exist in the app. The lack of detected results might indicate obfuscated or incomplete code paths.

#### Next Steps for Evaluating GDPR Compliance

##### Reverse Engineering and Code Review

Decompile the APK to inspect the Smali code:

```sh
apktool d com.yourdelivery.pyszne.apk
```

Here, we found few hints about Account Deletion:

- **Error handling**: Might be used in account deletion.
- **Account status tracking**: Might be used in account deletion.
- **Backend communication**: Might be used in account deletion.

The presence of `ACCOUNT_DELETED` suggests the app recognizes a state where a user account can be deleted.

The method name suggests that it is intended to remove user credentials. While it may not directly handle full account deletion, it could be a step in the process.

If this method, or any related methods, removes all user data (not just credentials), it likely fulfills the "right to erasure" under GDPR.

The `removeUserCredential` method:

- Delegates the work to `KahunaAnalytics$6`, which seems to handle the actual logic of credential removal.
- Runs the task asynchronously in the background, ensuring it doesn't block the main thread.

This could potentially be related to clearing user data, which might include account deletion functionality.


###### Challenges Encountered

- **Memory and Performance Issues**: The analysis encountered memory warnings and required increased memory allocation to handle the large app. The call graph construction and callback analysis took a significant amount of time and memory.
- **Abstract and Interface Classes**: The analysis issued several warnings regarding the inability to create valid constructors for abstract classes and interfaces. This might have affected the completeness of the analysis.
- **Missing Callback Methods**: The analysis reported errors regarding missing callback methods, which might have impacted the accuracy of the results.
- **Server Issues**:

###### Conclusion: Is the App GDPR Compliant?

Based on the analysis of the decompiled APK, here are the findings related to account deletion and GDPR compliance:

- **Account Deletion or Data Removal Process & Potential GDPR Relevance**: The `removeUserCredential` method in the `KahunaAnalytics` class handles the removal of user credentials, which may be part of a broader data removal process. While it doesn’t explicitly mention full account deletion, it suggests that the app might be removing sensitive user data such as authentication tokens. If the method is part of a broader process that erases all personal data (e.g., shopping cart, order history, delivery addresses), it could fulfill the "right to erasure" under GDPR. However, the exact scope of data removal beyond credentials is unclear.
- **User Data Handling (clearUserData) & Potential GDPR Relevance**: The `clearUserData()` method in the `LRActivity` class clears local user data, such as preferences and authentication tokens. While it addresses data removal on the client side, it does not specifically mention server-side deletion. For GDPR compliance, it is important to ensure that data is also erased from server-side systems. If the app is removing data only locally without corresponding server-side actions, it may not fully comply with GDPR’s "right to erasure" unless additional server-side processes are implemented and clearly communicated.

The app has some mechanisms to remove user credentials and clear local data, showing potential for GDPR compliance. However, it does not provide evidence of deleting data from servers, which is essential for meeting the "right to erasure." Additionally, the app lacks clear user consent processes and transparency about data deletion. To fully comply with GDPR, the app should ensure server-side data deletion, provide a clear process for users to request data removal, and inform users about their rights.
