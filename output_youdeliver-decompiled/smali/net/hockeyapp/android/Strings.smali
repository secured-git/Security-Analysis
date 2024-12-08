.class public Lnet/hockeyapp/android/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# static fields
.field public static final CRASH_DIALOG_MESSAGE_ID:I = 0x1

.field public static final CRASH_DIALOG_NEGATIVE_BUTTON_ID:I = 0x2

.field public static final CRASH_DIALOG_POSITIVE_BUTTON_ID:I = 0x3

.field public static final CRASH_DIALOG_TITLE_ID:I = 0x0

.field public static final DOWNLOAD_FAILED_DIALOG_MESSAGE_ID:I = 0x5

.field public static final DOWNLOAD_FAILED_DIALOG_NEGATIVE_BUTTON_ID:I = 0x6

.field public static final DOWNLOAD_FAILED_DIALOG_POSITIVE_BUTTON_ID:I = 0x7

.field public static final DOWNLOAD_FAILED_DIALOG_TITLE_ID:I = 0x4

.field public static final ENGLISH:[Ljava/lang/String;

.field public static final EXPIRY_INFO_TEXT_ID:I = 0xe

.field public static final EXPIRY_INFO_TITLE_ID:I = 0xd

.field public static final FEEDBACK_FAILED_TEXT_ID:I = 0x10

.field public static final FEEDBACK_FAILED_TITLE_ID:I = 0xf

.field public static final UPDATE_DIALOG_MESSAGE_ID:I = 0xa

.field public static final UPDATE_DIALOG_NEGATIVE_BUTTON_ID:I = 0xb

.field public static final UPDATE_DIALOG_POSITIVE_BUTTON_ID:I = 0xc

.field public static final UPDATE_DIALOG_TITLE_ID:I = 0x9

.field public static final UPDATE_MANDATORY_TOAST_ID:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 133
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Crash Data"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "The app found information about previous crashes. Would you like to send this data to the developer?"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Dismiss"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Send"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Download Failed"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "The update could not be downloaded. Would you like to try again?"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Cancel"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Retry"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Please install the latest version to continue to use this app."

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Update Available"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Show information about the new update?"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Dismiss"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Show"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Build Expired"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "This has build has expired. Please check HockeyApp for any updates."

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Feedback Failed"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Would you like to send your feedback again?"

    aput-object v2, v0, v1

    sput-object v0, Lnet/hockeyapp/android/Strings;->ENGLISH:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(I)Ljava/lang/String;
    .locals 1
    .param p0, "resourceID"    # I

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lnet/hockeyapp/android/Strings;->get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;
    .locals 2
    .param p0, "listener"    # Lnet/hockeyapp/android/StringListener;
    .param p1, "resourceID"    # I

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 180
    .local v0, "result":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 181
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/StringListener;->getStringForResource(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_0
    if-nez v0, :cond_1

    if-ltz p1, :cond_1

    sget-object v1, Lnet/hockeyapp/android/Strings;->ENGLISH:[Ljava/lang/String;

    array-length v1, v1

    if-gt p1, v1, :cond_1

    .line 185
    sget-object v1, Lnet/hockeyapp/android/Strings;->ENGLISH:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 188
    :cond_1
    return-object v0
.end method
