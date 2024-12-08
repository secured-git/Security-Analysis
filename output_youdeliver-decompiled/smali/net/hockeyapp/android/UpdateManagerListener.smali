.class public abstract Lnet/hockeyapp/android/UpdateManagerListener;
.super Lnet/hockeyapp/android/StringListener;
.source "UpdateManagerListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lnet/hockeyapp/android/StringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpiryDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUpdateActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lnet/hockeyapp/android/UpdateActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    const-class v0, Lnet/hockeyapp/android/UpdateActivity;

    return-object v0
.end method

.method public getUpdateFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lnet/hockeyapp/android/UpdateFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    const-class v0, Lnet/hockeyapp/android/UpdateFragment;

    return-object v0
.end method

.method public onBuildExpired()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public onNoUpdateAvailable()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public onUpdateAvailable()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method
