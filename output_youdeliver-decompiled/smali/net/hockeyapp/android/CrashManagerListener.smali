.class public abstract Lnet/hockeyapp/android/CrashManagerListener;
.super Lnet/hockeyapp/android/StringListener;
.source "CrashManagerListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lnet/hockeyapp/android/StringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public ignoreDefaultHandler()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public includeDeviceData()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public onConfirmedCrashesFound()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onCrashesFound()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public onCrashesNotSent()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public onCrashesSent()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public onNewCrashesFound()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public onUserDeniedCrashes()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public shouldAutoUploadCrashes()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method
