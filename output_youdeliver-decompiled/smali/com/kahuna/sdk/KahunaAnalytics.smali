.class public Lcom/kahuna/sdk/KahunaAnalytics;
.super Ljava/lang/Object;
.source "KahunaAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;,
        Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;
    }
.end annotation


# static fields
.field public static final ACTION_PUSH_CLICKED:Ljava/lang/String; = "com.kahuna.sdk.push.clicked"

.field public static final ACTION_PUSH_RECEIVED:Ljava/lang/String; = "com.kahuna.sdk.push.received"

.field private static final BATCH_LIMIT:I = 0x64

.field private static final BATCH_PENDING_INTERVAL_MILLI:J = 0x7d0L

.field public static final EXTRA_LANDING_DICTIONARY_ID:Ljava/lang/String; = "landing_extras_id"

.field public static final EXTRA_LAYOUT_ID:Ljava/lang/String; = "layout_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_PUSH_MESSAGE:Ljava/lang/String; = "alert"

.field private static final HTTP_SOCKET_TIMEOUT:I = 0x3a98

.field public static final LOCATION_REGION_MONITORING_OPTION:I = 0x1

.field protected static final LOG_TAG:Ljava/lang/String; = "KahunaAnalytics"

.field protected static MAX_EVENTS_TO_ARCHIVE:I = 0x0

.field private static final STOP_TIMEOUT_MILLI:J = 0x1388L

.field private static hideFGPushes:Z

.field private static iBeaconMonitoringDeveloperEnabled:Z

.field private static iconOverrideId:I

.field private static inAppFeatureSupported:Z

.field private static instanceLock:Ljava/lang/Object;

.field protected static mDebugEnabled:Z

.field private static mInAppMessageListener:Lcom/kahuna/sdk/KahunaInAppMessageListener;

.field private static mKahunaExecutor:Ljava/util/concurrent/ExecutorService;

.field private static pushCustomReceiver:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static regionMonitoringDeveloperEnabled:Z

.field private static sdkGenerateNotificationsOverride:Z

.field private static sdkPushLaunchOverride:Z

.field protected static senderId:Ljava/lang/String;

.field private static sharedInstance:Lcom/kahuna/sdk/KahunaAnalytics;

.field private static startStopLock:Ljava/lang/Object;


# instance fields
.field private final DEVELOPMENT_URL:Ljava/lang/String;

.field private HYBRID_SDK_KEY:Ljava/lang/String;

.field private HYBRID_SDK_VALUE:Ljava/lang/String;

.field private final OS_NAME:Ljava/lang/String;

.field private final PRODUCTION_URL:Ljava/lang/String;

.field private final SDK_VERSION:Ljava/lang/String;

.field private final USER_ENGINE_URL:Ljava/lang/String;

.field private mActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mAppContext:Landroid/content/Context;

.field private mAppName:Ljava/lang/String;

.field private mAppVersion:Ljava/lang/String;

.field private mBatchTimer:Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

.field private mBatchTimerLock:Ljava/lang/Object;

.field private mConnectionInProgress:Z

.field private mConnectionProgressLock:Ljava/lang/Object;

.field private mDebugBuild:Z

.field private mDeviceId:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mEventsInProgress:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kahuna/sdk/KAEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mEventsLock:Ljava/lang/Object;

.field private mEventsQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kahuna/sdk/KAEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mExponentialBackoffRangesMilli:[[I

.field private final mHttpClient:Lcom/kahuna/sdk/http/AsyncHttpClient;

.field private mIsInitialized:Z

.field private mKahunaSecretKey:Ljava/lang/String;

.field private mLastBatchSentTimestamp:J

.field private mOSName:Ljava/lang/String;

.field private mOSVersion:Ljava/lang/String;

.field private mPushEnabled:Z

.field private mPushToken:Ljava/lang/String;

.field private mRetryAttempt:I

.field private mSDKConfig:Lcom/kahuna/sdk/KahunaSDKConfiguration;

.field private final mSDKVersion:Ljava/lang/String;

.field private mShouldInsertUserCreds:Z

.field private mStopTimer:Ljava/util/Timer;

.field private mSupportLibMissing:Z

.field private final mUrl:Ljava/lang/String;

.field private mUserCredentials:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    sput-boolean v1, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/KahunaAnalytics;->instanceLock:Ljava/lang/Object;

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/KahunaAnalytics;->startStopLock:Ljava/lang/Object;

    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/kahuna/sdk/KahunaAnalytics;->sharedInstance:Lcom/kahuna/sdk/KahunaAnalytics;

    .line 129
    const/16 v0, 0x3e8

    sput v0, Lcom/kahuna/sdk/KahunaAnalytics;->MAX_EVENTS_TO_ARCHIVE:I

    .line 175
    sput-boolean v1, Lcom/kahuna/sdk/KahunaAnalytics;->inAppFeatureSupported:Z

    .line 176
    const/4 v0, -0x1

    sput v0, Lcom/kahuna/sdk/KahunaAnalytics;->iconOverrideId:I

    .line 177
    sput-boolean v1, Lcom/kahuna/sdk/KahunaAnalytics;->sdkPushLaunchOverride:Z

    .line 178
    sput-boolean v1, Lcom/kahuna/sdk/KahunaAnalytics;->hideFGPushes:Z

    .line 179
    sput-boolean v1, Lcom/kahuna/sdk/KahunaAnalytics;->sdkGenerateNotificationsOverride:Z

    .line 185
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/kahuna/sdk/KahunaAnalytics;->mKahunaExecutor:Ljava/util/concurrent/ExecutorService;

    .line 186
    sput-boolean v1, Lcom/kahuna/sdk/KahunaAnalytics;->regionMonitoringDeveloperEnabled:Z

    .line 187
    sput-boolean v1, Lcom/kahuna/sdk/KahunaAnalytics;->iBeaconMonitoringDeveloperEnabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-boolean v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugBuild:Z

    .line 111
    const-string v0, "489"

    iput-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->SDK_VERSION:Ljava/lang/String;

    .line 112
    const-string v0, "Android"

    iput-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->OS_NAME:Ljava/lang/String;

    .line 113
    iput-object v1, p0, Lcom/kahuna/sdk/KahunaAnalytics;->HYBRID_SDK_KEY:Ljava/lang/String;

    .line 114
    iput-object v1, p0, Lcom/kahuna/sdk/KahunaAnalytics;->HYBRID_SDK_VALUE:Ljava/lang/String;

    .line 117
    const-string v0, "https://tap-nexus.appspot.com/log"

    iput-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->PRODUCTION_URL:Ljava/lang/String;

    .line 118
    const-string v0, "https://tn-devel.appspot.com/log"

    iput-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->DEVELOPMENT_URL:Ljava/lang/String;

    .line 119
    const-string v0, "https://user-engine.appspot.com/log"

    iput-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->USER_ENGINE_URL:Ljava/lang/String;

    .line 140
    iput-boolean v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mIsInitialized:Z

    .line 141
    iput-boolean v4, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mPushEnabled:Z

    .line 142
    iput-boolean v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mSupportLibMissing:Z

    .line 144
    const-string v0, "https://tap-nexus.appspot.com/log"

    iput-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mUrl:Ljava/lang/String;

    .line 149
    const-string v0, "Android"

    iput-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mOSName:Ljava/lang/String;

    .line 151
    const-string v0, "489"

    iput-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mSDKVersion:Ljava/lang/String;

    .line 156
    iput-boolean v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mShouldInsertUserCreds:Z

    .line 158
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mEventsLock:Ljava/lang/Object;

    .line 162
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mConnectionProgressLock:Ljava/lang/Object;

    .line 165
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mBatchTimerLock:Ljava/lang/Object;

    .line 167
    const/4 v0, 0x4

    new-array v0, v0, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mExponentialBackoffRangesMilli:[[I

    .line 168
    iput v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mRetryAttempt:I

    .line 183
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mLastBatchSentTimestamp:J

    .line 191
    new-instance v0, Lcom/kahuna/sdk/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/kahuna/sdk/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mHttpClient:Lcom/kahuna/sdk/http/AsyncHttpClient;

    .line 192
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mHttpClient:Lcom/kahuna/sdk/http/AsyncHttpClient;

    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Lcom/kahuna/sdk/http/AsyncHttpClient;->setTimeout(I)V

    .line 193
    return-void

    .line 167
    nop

    :array_0
    .array-data 4
        0x1388
        0x2710
    .end array-data

    :array_1
    .array-data 4
        0x2710
        0x4e20
    .end array-data

    :array_2
    .array-data 4
        0x4e20
        0x9c40
    .end array-data

    :array_3
    .array-data 4
        0x9c40
        0x13880
    .end array-data
.end method

.method public static _internalTrackiBeaconEvent(Lcom/kahuna/sdk/KahunaAnalytics;Lcom/kahuna/sdk/location/KahunaIBeacon;Ljava/lang/String;)V
    .locals 3
    .param p0, "analytics"    # Lcom/kahuna/sdk/KahunaAnalytics;
    .param p1, "beacon"    # Lcom/kahuna/sdk/location/KahunaIBeacon;
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    .line 1058
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 1059
    const-string v0, "KahunaAnalytics"

    const-string v1, "Attempted to call public internal API. Ignoring call."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :goto_0
    return-void

    .line 1063
    :cond_0
    sget-object v0, Lcom/kahuna/sdk/KahunaAnalytics;->mKahunaExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kahuna/sdk/KahunaBackgroundRunnable;

    new-instance v2, Lcom/kahuna/sdk/KahunaAnalytics$14;

    invoke-direct {v2, p1, p2}, Lcom/kahuna/sdk/KahunaAnalytics$14;-><init>(Lcom/kahuna/sdk/location/KahunaIBeacon;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/KahunaBackgroundRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/kahuna/sdk/KahunaAnalytics;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kahuna/sdk/KahunaAnalytics;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mIsInitialized:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mStopTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/kahuna/sdk/KahunaAnalytics;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mStopTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/kahuna/sdk/KahunaAnalytics;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mPushEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/kahuna/sdk/KahunaAnalytics;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mShouldInsertUserCreds:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/kahuna/sdk/KahunaAnalytics;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mShouldInsertUserCreds:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/kahuna/sdk/KahunaAnalytics;Lcom/kahuna/sdk/KAEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;
    .param p1, "x1"    # Lcom/kahuna/sdk/KAEvent;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/kahuna/sdk/KahunaAnalytics;->trackEventInternal(Lcom/kahuna/sdk/KAEvent;)V

    return-void
.end method

.method static synthetic access$1400(Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/Map;

    .prologue
    .line 58
    invoke-static {p0}, Lcom/kahuna/sdk/KahunaAnalytics;->setUserAttributesInternal(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/kahuna/sdk/KahunaAnalytics;)V
    .locals 0
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/kahuna/sdk/KahunaAnalytics;->resetExponentialBackoffTimerValue()V

    return-void
.end method

.method static synthetic access$1600(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mBatchTimerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/kahuna/sdk/KahunaAnalytics;)Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mBatchTimer:Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/kahuna/sdk/KahunaAnalytics;Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;)Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;
    .locals 0
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;
    .param p1, "x1"    # Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mBatchTimer:Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/kahuna/sdk/KahunaAnalytics;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/kahuna/sdk/KahunaAnalytics;->handleBatchScheduling(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/kahuna/sdk/KahunaAnalytics;)J
    .locals 2
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mLastBatchSentTimestamp:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/kahuna/sdk/KahunaAnalytics;J)J
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;
    .param p1, "x1"    # J

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mLastBatchSentTimestamp:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/kahuna/sdk/KahunaAnalytics;)V
    .locals 0
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/kahuna/sdk/KahunaAnalytics;->initializeInstance()V

    return-void
.end method

.method static synthetic access$2000(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p0, p1}, Lcom/kahuna/sdk/KahunaAnalytics;->setUserCredentialInternal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/kahuna/sdk/KahunaAnalytics;->getUserCredentialsInternal()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2202(Lcom/kahuna/sdk/KahunaAnalytics;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mUserCredentials:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/kahuna/sdk/KahunaAnalytics;->getUserAttributesInternal()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400()Z
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/kahuna/sdk/KahunaAnalytics;->sdkPushLaunchOverride:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mConnectionProgressLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/kahuna/sdk/KahunaAnalytics;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mConnectionInProgress:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/kahuna/sdk/KahunaAnalytics;->startStopLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mOSVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mOSName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mPushToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/kahuna/sdk/KahunaAnalytics;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mSupportLibMissing:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->HYBRID_SDK_KEY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->HYBRID_SDK_VALUE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/kahuna/sdk/KahunaAnalytics;)Lcom/kahuna/sdk/KahunaSDKConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mSDKConfig:Lcom/kahuna/sdk/KahunaSDKConfiguration;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/kahuna/sdk/KahunaAnalytics;Lcom/kahuna/sdk/KahunaSDKConfiguration;)Lcom/kahuna/sdk/KahunaSDKConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;
    .param p1, "x1"    # Lcom/kahuna/sdk/KahunaSDKConfiguration;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mSDKConfig:Lcom/kahuna/sdk/KahunaSDKConfiguration;

    return-object p1
.end method

.method static synthetic access$3900()Z
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/kahuna/sdk/KahunaAnalytics;->inAppFeatureSupported:Z

    return v0
.end method

.method static synthetic access$400(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$4000()Z
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/kahuna/sdk/KahunaAnalytics;->regionMonitoringDeveloperEnabled:Z

    return v0
.end method

.method static synthetic access$4100()Z
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/kahuna/sdk/KahunaAnalytics;->iBeaconMonitoringDeveloperEnabled:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mEventsInProgress:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/kahuna/sdk/KahunaAnalytics;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mEventsInProgress:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/kahuna/sdk/KahunaAnalytics;)V
    .locals 0
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/kahuna/sdk/KahunaAnalytics;->handleBatchRequestFailure()V

    return-void
.end method

.method static synthetic access$4400(Lcom/kahuna/sdk/KahunaAnalytics;)Lcom/kahuna/sdk/http/AsyncHttpClient;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mHttpClient:Lcom/kahuna/sdk/http/AsyncHttpClient;

    return-object v0
.end method

.method static synthetic access$500(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mEventsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mEventsQueue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/kahuna/sdk/KahunaAnalytics;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mEventsQueue:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mKahunaSecretKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/kahuna/sdk/KahunaAnalytics;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/kahuna/sdk/KahunaAnalytics;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kahuna/sdk/KahunaAnalytics;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugBuild:Z

    return v0
.end method

.method public static checkPush(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1196
    invoke-static {p0}, Lcom/kahuna/sdk/GCMRegistrar;->checkDevice(Landroid/content/Context;)V

    .line 1197
    invoke-static {p0}, Lcom/kahuna/sdk/GCMRegistrar;->checkManifest(Landroid/content/Context;)V

    .line 1198
    return-void
.end method

.method public static disableKahunaGenerateNotifications()V
    .locals 1

    .prologue
    .line 1377
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kahuna/sdk/KahunaAnalytics;->sdkGenerateNotificationsOverride:Z

    .line 1378
    return-void
.end method

.method public static disableKahunaPushLaunchApp()V
    .locals 1

    .prologue
    .line 1279
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kahuna/sdk/KahunaAnalytics;->sdkPushLaunchOverride:Z

    .line 1280
    return-void
.end method

.method public static disableLocationServices(I)V
    .locals 1
    .param p0, "options"    # I

    .prologue
    .line 1410
    and-int/lit8 v0, p0, 0x1

    if-lez v0, :cond_0

    .line 1411
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kahuna/sdk/KahunaAnalytics;->regionMonitoringDeveloperEnabled:Z

    .line 1422
    :cond_0
    sget-boolean v0, Lcom/kahuna/sdk/KahunaAnalytics;->regionMonitoringDeveloperEnabled:Z

    if-nez v0, :cond_1

    .line 1423
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/location/KahunaRegionManager;->removeAllMonitoredRegions(Lcom/kahuna/sdk/KahunaAnalytics;)V

    .line 1432
    :cond_1
    return-void
.end method

.method public static disablePush()V
    .locals 10

    .prologue
    .line 1129
    :try_start_0
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v9

    .line 1130
    .local v9, "instance":Lcom/kahuna/sdk/KahunaAnalytics;
    iget-object v1, v9, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 1131
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You need to call onAppCreate() in your MainApplication\'s onCreate() before enable/disable push"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1142
    :catch_0
    move-exception v8

    .line 1144
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handled exception in KahunaAnalytics.disablePush(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 1133
    :cond_1
    :try_start_1
    iget-boolean v1, v9, Lcom/kahuna/sdk/KahunaAnalytics;->mPushEnabled:Z

    if-eqz v1, :cond_0

    .line 1135
    const/4 v1, 0x0

    iput-boolean v1, v9, Lcom/kahuna/sdk/KahunaAnalytics;->mPushEnabled:Z

    .line 1136
    iget-boolean v1, v9, Lcom/kahuna/sdk/KahunaAnalytics;->mPushEnabled:Z

    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v2

    iget-object v2, v2, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/kahuna/sdk/KahunaPreferences;->savePushEnabled(ZLandroid/content/Context;)V

    .line 1138
    new-instance v0, Lcom/kahuna/sdk/KAEvent;

    const-string v1, "k_push_disabled"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/kahuna/sdk/KAEvent;-><init>(Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 1139
    .local v0, "event":Lcom/kahuna/sdk/KAEvent;
    invoke-direct {v9, v0}, Lcom/kahuna/sdk/KahunaAnalytics;->trackEventInternal(Lcom/kahuna/sdk/KAEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static enableKahunaGenerateNotifications()V
    .locals 1

    .prologue
    .line 1385
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kahuna/sdk/KahunaAnalytics;->sdkGenerateNotificationsOverride:Z

    .line 1386
    return-void
.end method

.method public static enableKahunaPushLaunchApp()V
    .locals 1

    .prologue
    .line 1287
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kahuna/sdk/KahunaAnalytics;->sdkPushLaunchOverride:Z

    .line 1288
    return-void
.end method

.method public static enableLocationServices(I)V
    .locals 1
    .param p0, "options"    # I

    .prologue
    .line 1394
    and-int/lit8 v0, p0, 0x1

    if-lez v0, :cond_0

    .line 1395
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kahuna/sdk/KahunaAnalytics;->regionMonitoringDeveloperEnabled:Z

    .line 1401
    :cond_0
    return-void
.end method

.method public static enablePush()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    .line 1102
    :try_start_0
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v9

    .line 1103
    .local v9, "instance":Lcom/kahuna/sdk/KahunaAnalytics;
    iget-object v1, v9, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 1104
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You need to call onAppCreate() in your MainApplication\'s onCreate() before enable/disable push"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1116
    :catch_0
    move-exception v8

    .line 1118
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handled exception in KahunaAnalytics.enablePush(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 1106
    :cond_1
    :try_start_1
    iget-boolean v1, v9, Lcom/kahuna/sdk/KahunaAnalytics;->mPushEnabled:Z

    if-eq v1, v2, :cond_0

    .line 1108
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/kahuna/sdk/KahunaAnalytics;->mPushEnabled:Z

    .line 1109
    iget-boolean v1, v9, Lcom/kahuna/sdk/KahunaAnalytics;->mPushEnabled:Z

    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v2

    iget-object v2, v2, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/kahuna/sdk/KahunaPreferences;->savePushEnabled(ZLandroid/content/Context;)V

    .line 1112
    new-instance v0, Lcom/kahuna/sdk/KAEvent;

    const-string v1, "k_push_enabled"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/kahuna/sdk/KAEvent;-><init>(Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 1113
    .local v0, "event":Lcom/kahuna/sdk/KAEvent;
    invoke-direct {v9, v0}, Lcom/kahuna/sdk/KahunaAnalytics;->trackEventInternal(Lcom/kahuna/sdk/KAEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static forceDebugBuild()V
    .locals 3

    .prologue
    .line 257
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v0

    .line 259
    .local v0, "instance":Lcom/kahuna/sdk/KahunaAnalytics;
    iget-object v1, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 260
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You should call onAppCreate() before forcing debug build."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugBuild:Z

    .line 263
    return-void
.end method

.method protected static getCustomInAppMessageListener()Lcom/kahuna/sdk/KahunaInAppMessageListener;
    .locals 1

    .prologue
    .line 1253
    sget-object v0, Lcom/kahuna/sdk/KahunaAnalytics;->mInAppMessageListener:Lcom/kahuna/sdk/KahunaInAppMessageListener;

    return-object v0
.end method

.method protected static getCustomPushReceiver()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1223
    sget-object v0, Lcom/kahuna/sdk/KahunaAnalytics;->pushCustomReceiver:Ljava/lang/Class;

    return-object v0
.end method

.method public static getDebugModeEnabled()Z
    .locals 1

    .prologue
    .line 1501
    sget-boolean v0, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    return v0
.end method

.method private static getGUID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1490
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v1

    iget-object v1, v1, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/kahuna/sdk/KahunaPreferences;->getSavedDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1492
    .local v0, "prevGUID":Ljava/lang/String;
    invoke-static {v0}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1493
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1494
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v1

    iget-object v1, v1, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/kahuna/sdk/KahunaPreferences;->saveDeviceId(Ljava/lang/String;Landroid/content/Context;)V

    .line 1497
    :cond_0
    return-object v0
.end method

.method protected static getIconResourceId()I
    .locals 1

    .prologue
    .line 1261
    sget v0, Lcom/kahuna/sdk/KahunaAnalytics;->iconOverrideId:I

    return v0
.end method

.method public static getIsPushEnabled()Z
    .locals 3

    .prologue
    .line 1158
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v0

    .line 1160
    .local v0, "instance":Lcom/kahuna/sdk/KahunaAnalytics;
    iget-object v1, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1161
    const-string v1, "KahunaAnalytics"

    const-string v2, "Error, push state unknown. You must call onAppCreate() before getting the current status of push."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_0
    iget-boolean v1, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mPushEnabled:Z

    return v1
.end method

.method protected static getKahunaActivityCount()I
    .locals 1

    .prologue
    .line 539
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v0

    iget-object v0, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public static getKahunaDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1301
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v0

    .line 1302
    .local v0, "instance":Lcom/kahuna/sdk/KahunaAnalytics;
    iget-boolean v1, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mIsInitialized:Z

    if-nez v1, :cond_1

    .line 1303
    sget-boolean v1, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v1, :cond_0

    .line 1304
    const-string v1, "KahunaAnalytics"

    const-string v2, "Need to call onAppCreate() before calling getKahunaDeviceId()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    :cond_0
    const/4 v1, 0x0

    .line 1308
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mDeviceId:Ljava/lang/String;

    goto :goto_0
.end method

.method protected static getKahunaGenerateNotificationsOverride()Z
    .locals 1

    .prologue
    .line 1435
    sget-boolean v0, Lcom/kahuna/sdk/KahunaAnalytics;->sdkGenerateNotificationsOverride:Z

    return v0
.end method

.method protected static getKahunaPushLaunchOverride()Z
    .locals 1

    .prologue
    .line 1291
    sget-boolean v0, Lcom/kahuna/sdk/KahunaAnalytics;->sdkPushLaunchOverride:Z

    return v0
.end method

.method private declared-synchronized getNextExponentialBackoffTimerValue()J
    .locals 8

    .prologue
    .line 1445
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mRetryAttempt:I

    .line 1446
    .local v2, "rangeLookup":I
    iget-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mExponentialBackoffRangesMilli:[[I

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 1447
    iget-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mExponentialBackoffRangesMilli:[[I

    array-length v3, v3

    add-int/lit8 v2, v3, -0x1

    .line 1451
    :cond_0
    iget-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mExponentialBackoffRangesMilli:[[I

    aget-object v3, v3, v2

    const/4 v4, 0x1

    aget v0, v3, v4

    .line 1452
    .local v0, "highValue":I
    iget-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mExponentialBackoffRangesMilli:[[I

    aget-object v3, v3, v2

    const/4 v4, 0x0

    aget v1, v3, v4

    .line 1453
    .local v1, "lowValue":I
    invoke-static {}, Ljava/lang/Math;->random()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    sub-int v3, v0, v1

    int-to-double v6, v3

    mul-double/2addr v4, v6

    int-to-double v6, v1

    add-double/2addr v4, v6

    double-to-int v3, v4

    int-to-long v4, v3

    monitor-exit p0

    return-wide v4

    .line 1445
    .end local v0    # "highValue":I
    .end local v1    # "lowValue":I
    .end local v2    # "rangeLookup":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public static getPushToken()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1320
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v0

    .line 1321
    .local v0, "instance":Lcom/kahuna/sdk/KahunaAnalytics;
    iget-boolean v2, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mIsInitialized:Z

    if-nez v2, :cond_1

    .line 1322
    sget-boolean v2, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v2, :cond_0

    .line 1323
    const-string v2, "KahunaAnalytics"

    const-string v3, "Need to call onAppCreate() before calling getPushToken()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    :cond_0
    :goto_0
    return-object v1

    .line 1327
    :cond_1
    iget-boolean v2, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mPushEnabled:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/kahuna/sdk/KahunaAnalytics;->senderId:Ljava/lang/String;

    invoke-static {v2}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1328
    iget-object v2, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/kahuna/sdk/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1329
    .local v1, "regId":Ljava/lang/String;
    goto :goto_0
.end method

.method protected static getSDKVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1439
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v0

    .line 1440
    .local v0, "instance":Lcom/kahuna/sdk/KahunaAnalytics;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "489"

    return-object v1
.end method

.method protected static getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;
    .locals 2

    .prologue
    .line 266
    sget-object v1, Lcom/kahuna/sdk/KahunaAnalytics;->instanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 267
    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/KahunaAnalytics;->sharedInstance:Lcom/kahuna/sdk/KahunaAnalytics;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-direct {v0}, Lcom/kahuna/sdk/KahunaAnalytics;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/KahunaAnalytics;->sharedInstance:Lcom/kahuna/sdk/KahunaAnalytics;

    .line 270
    :cond_0
    sget-object v0, Lcom/kahuna/sdk/KahunaAnalytics;->sharedInstance:Lcom/kahuna/sdk/KahunaAnalytics;

    monitor-exit v1

    return-object v0

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static getShouldDisplayNotification()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1352
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v0

    .line 1353
    .local v0, "instance":Lcom/kahuna/sdk/KahunaAnalytics;
    iget-boolean v2, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mIsInitialized:Z

    if-nez v2, :cond_1

    .line 1364
    :cond_0
    :goto_0
    return v1

    .line 1358
    :cond_1
    sget-boolean v2, Lcom/kahuna/sdk/KahunaAnalytics;->hideFGPushes:Z

    if-eqz v2, :cond_0

    .line 1359
    iget-object v2, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_0

    .line 1360
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getUserAttributes()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 854
    :try_start_0
    sget-object v2, Lcom/kahuna/sdk/KahunaAnalytics;->mKahunaExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/kahuna/sdk/KahunaAnalytics$10;

    invoke-direct {v3}, Lcom/kahuna/sdk/KahunaAnalytics$10;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 862
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    :goto_0
    return-object v2

    .line 863
    :catch_0
    move-exception v0

    .line 864
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v2, :cond_0

    .line 865
    const-string v2, "KahunaAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception attempting to retrieve stored attributes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method private declared-synchronized getUserAttributesInternal()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 872
    monitor-enter p0

    const/4 v1, 0x0

    .line 874
    .local v1, "storedAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaPreferences;->getUserAttributes(Landroid/content/Context;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    move-object v2, v1

    .line 882
    .end local v1    # "storedAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v2, "storedAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    if-nez v2, :cond_1

    .line 883
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 885
    .end local v2    # "storedAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "storedAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    monitor-exit p0

    return-object v1

    .line 876
    :catch_0
    move-exception v0

    .line 877
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-boolean v3, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v3, :cond_0

    .line 878
    const-string v3, "KahunaAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception attempting to retrieve stored attributes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 879
    :cond_0
    const/4 v1, 0x0

    move-object v2, v1

    .end local v1    # "storedAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "storedAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 872
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "storedAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "storedAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    :goto_2
    monitor-exit p0

    throw v3

    .end local v1    # "storedAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "storedAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "storedAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "storedAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_2

    .end local v1    # "storedAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "storedAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    move-object v1, v2

    .end local v2    # "storedAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "storedAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public static getUserCredentials()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 724
    :try_start_0
    sget-object v2, Lcom/kahuna/sdk/KahunaAnalytics;->mKahunaExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/kahuna/sdk/KahunaAnalytics$7;

    invoke-direct {v3}, Lcom/kahuna/sdk/KahunaAnalytics$7;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 733
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    :goto_0
    return-object v2

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v2, :cond_0

    .line 736
    const-string v2, "KahunaAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception attempting to retrieve stored credentials:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method private declared-synchronized getUserCredentialsInternal()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 889
    monitor-enter p0

    const/4 v1, 0x0

    .line 891
    .local v1, "storedCredentials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaPreferences;->getUserCredentials(Landroid/content/Context;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    move-object v2, v1

    .line 899
    .end local v1    # "storedCredentials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v2, "storedCredentials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    if-nez v2, :cond_1

    .line 900
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 902
    .end local v2    # "storedCredentials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "storedCredentials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    monitor-exit p0

    return-object v1

    .line 893
    :catch_0
    move-exception v0

    .line 894
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-boolean v3, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v3, :cond_0

    .line 895
    const-string v3, "KahunaAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception attempting to retrieve stored credentials:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 896
    :cond_0
    const/4 v1, 0x0

    move-object v2, v1

    .end local v1    # "storedCredentials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "storedCredentials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 889
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "storedCredentials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "storedCredentials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    :goto_2
    monitor-exit p0

    throw v3

    .end local v1    # "storedCredentials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "storedCredentials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "storedCredentials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "storedCredentials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_2

    .end local v1    # "storedCredentials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "storedCredentials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    move-object v1, v2

    .end local v2    # "storedCredentials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "storedCredentials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1
.end method

.method private handleBatchRequestFailure()V
    .locals 6

    .prologue
    .line 1462
    iget-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mBatchTimerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1463
    :try_start_0
    iget-object v2, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mBatchTimer:Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    if-eqz v2, :cond_0

    .line 1464
    iget-object v2, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mBatchTimer:Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    invoke-virtual {v2}, Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;->cancel()V

    .line 1465
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mBatchTimer:Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    .line 1469
    :cond_0
    iget v2, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mRetryAttempt:I

    iget-object v4, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mSDKConfig:Lcom/kahuna/sdk/KahunaSDKConfiguration;

    invoke-virtual {v4}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->getMaxRetryAttempts()I

    move-result v4

    if-lt v2, v4, :cond_2

    .line 1470
    invoke-direct {p0}, Lcom/kahuna/sdk/KahunaAnalytics;->resetExponentialBackoffTimerValue()V

    .line 1471
    sget-boolean v2, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v2, :cond_1

    .line 1472
    const-string v2, "KahunaAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reached our max retry limit. Will not retry until the next request to flush events. Max attempts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mSDKConfig:Lcom/kahuna/sdk/KahunaSDKConfiguration;

    invoke-virtual {v5}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->getMaxRetryAttempts()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    :cond_1
    monitor-exit v3

    .line 1487
    :goto_0
    return-void

    .line 1478
    :cond_2
    invoke-direct {p0}, Lcom/kahuna/sdk/KahunaAnalytics;->getNextExponentialBackoffTimerValue()J

    move-result-wide v0

    .line 1479
    .local v0, "nextBackoffTime":J
    sget-boolean v2, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v2, :cond_3

    .line 1480
    const-string v2, "KahunaAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheduling next retry in: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(ms)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :cond_3
    new-instance v2, Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;-><init>(Lcom/kahuna/sdk/KahunaAnalytics;Lcom/kahuna/sdk/KahunaAnalytics$1;)V

    iput-object v2, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mBatchTimer:Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    .line 1484
    iget-object v2, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mBatchTimer:Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    new-instance v4, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;-><init>(Lcom/kahuna/sdk/KahunaAnalytics;Lcom/kahuna/sdk/KahunaAnalytics$1;)V

    invoke-virtual {v2, v4, v0, v1}, Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;->schedule(Ljava/util/TimerTask;J)V

    .line 1485
    iget v2, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mRetryAttempt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mRetryAttempt:I

    .line 1486
    monitor-exit v3

    goto :goto_0

    .end local v0    # "nextBackoffTime":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private handleBatchScheduling(Ljava/lang/String;)V
    .locals 18
    .param p1, "targetEvent"    # Ljava/lang/String;

    .prologue
    .line 1506
    const/4 v8, 0x0

    .line 1507
    .local v8, "pendingEventCount":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mEventsLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1508
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mEventsQueue:Ljava/util/List;

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mEventsQueue:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_1

    .line 1510
    :cond_0
    monitor-exit v11

    .line 1580
    :goto_0
    return-void

    .line 1513
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mEventsQueue:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    .line 1514
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1516
    const/4 v9, 0x0

    .line 1517
    .local v9, "shouldFlushImmediately":Z
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mSDKConfig:Lcom/kahuna/sdk/KahunaSDKConfiguration;

    invoke-virtual {v10}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->getTriggerEvents()Ljava/util/Set;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1519
    const/4 v9, 0x1

    .line 1534
    :cond_2
    :goto_1
    if-eqz v9, :cond_6

    .line 1537
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mBatchTimerLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1538
    :try_start_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mBatchTimer:Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    if-eqz v10, :cond_3

    .line 1539
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mBatchTimer:Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    invoke-virtual {v10}, Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;->cancel()V

    .line 1540
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mBatchTimer:Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    .line 1543
    :cond_3
    new-instance v10, Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v12}, Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;-><init>(Lcom/kahuna/sdk/KahunaAnalytics;Lcom/kahuna/sdk/KahunaAnalytics$1;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mBatchTimer:Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    .line 1544
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mBatchTimer:Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    new-instance v12, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;-><init>(Lcom/kahuna/sdk/KahunaAnalytics;Lcom/kahuna/sdk/KahunaAnalytics$1;)V

    const-wide/16 v14, 0x0

    invoke-virtual {v10, v12, v14, v15}, Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;->schedule(Ljava/util/TimerTask;J)V

    .line 1545
    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 1514
    .end local v9    # "shouldFlushImmediately":Z
    :catchall_1
    move-exception v10

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v10

    .line 1521
    .restart local v9    # "shouldFlushImmediately":Z
    :cond_4
    int-to-long v10, v8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mSDKConfig:Lcom/kahuna/sdk/KahunaSDKConfiguration;

    invoke-virtual {v12}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->getFlushOnEventCount()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-ltz v10, :cond_5

    .line 1523
    const/4 v9, 0x1

    goto :goto_1

    .line 1527
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long v2, v10, v12

    .line 1528
    .local v2, "currentTimeSeconds":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mSDKConfig:Lcom/kahuna/sdk/KahunaSDKConfiguration;

    invoke-virtual {v10}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->getFlushIntervalSeconds()J

    move-result-wide v6

    .line 1529
    .local v6, "flushIntervalSeconds":J
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mLastBatchSentTimestamp:J

    add-long/2addr v10, v6

    cmp-long v10, v10, v2

    if-gez v10, :cond_2

    .line 1530
    const/4 v9, 0x1

    goto :goto_1

    .line 1550
    .end local v2    # "currentTimeSeconds":J
    .end local v6    # "flushIntervalSeconds":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mSDKConfig:Lcom/kahuna/sdk/KahunaSDKConfiguration;

    invoke-virtual {v10}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->getFlushSoonEvents()Ljava/util/Set;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1553
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mSDKConfig:Lcom/kahuna/sdk/KahunaSDKConfiguration;

    invoke-virtual {v10}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->getFlushSoonDelayIntervalSeconds()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long v4, v10, v12

    .line 1554
    .local v4, "flushDelayMilli":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mBatchTimerLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1555
    :try_start_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mBatchTimer:Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    if-eqz v10, :cond_7

    .line 1556
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mBatchTimer:Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    invoke-virtual {v10}, Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;->getTimerFireTime()J

    move-result-wide v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v12, v14

    cmp-long v10, v12, v4

    if-lez v10, :cond_7

    .line 1557
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mBatchTimer:Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    invoke-virtual {v10}, Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;->cancel()V

    .line 1558
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mBatchTimer:Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    .line 1563
    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mBatchTimer:Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    if-nez v10, :cond_8

    .line 1564
    new-instance v10, Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v12}, Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;-><init>(Lcom/kahuna/sdk/KahunaAnalytics;Lcom/kahuna/sdk/KahunaAnalytics$1;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mBatchTimer:Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    .line 1565
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mBatchTimer:Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    new-instance v12, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;-><init>(Lcom/kahuna/sdk/KahunaAnalytics;Lcom/kahuna/sdk/KahunaAnalytics$1;)V

    invoke-virtual {v10, v12, v4, v5}, Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;->schedule(Ljava/util/TimerTask;J)V

    .line 1567
    :cond_8
    monitor-exit v11

    goto/16 :goto_0

    :catchall_2
    move-exception v10

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v10

    .line 1571
    .end local v4    # "flushDelayMilli":J
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mBatchTimerLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1572
    :try_start_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mBatchTimer:Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    if-nez v10, :cond_a

    .line 1573
    new-instance v10, Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v12}, Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;-><init>(Lcom/kahuna/sdk/KahunaAnalytics;Lcom/kahuna/sdk/KahunaAnalytics$1;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mBatchTimer:Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    .line 1574
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mBatchTimer:Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;

    new-instance v12, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lcom/kahuna/sdk/KahunaAnalytics$SendEventsTask;-><init>(Lcom/kahuna/sdk/KahunaAnalytics;Lcom/kahuna/sdk/KahunaAnalytics$1;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mSDKConfig:Lcom/kahuna/sdk/KahunaSDKConfiguration;

    invoke-virtual {v13}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->getFlushIntervalSeconds()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    invoke-virtual {v10, v12, v14, v15}, Lcom/kahuna/sdk/KahunaAnalytics$KahunaTimer;->schedule(Ljava/util/TimerTask;J)V

    .line 1576
    :cond_a
    monitor-exit v11

    goto/16 :goto_0

    :catchall_3
    move-exception v10

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v10
.end method

.method public static hideForegroundNotifications(Z)V
    .locals 0
    .param p0, "consumeFGPushes"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1348
    sput-boolean p0, Lcom/kahuna/sdk/KahunaAnalytics;->hideFGPushes:Z

    .line 1349
    return-void
.end method

.method private declared-synchronized initializeInstance()V
    .locals 8

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 276
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You did not call onAppCreate() in your MainApplication\'s onCreate() method."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 278
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mIsInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    .line 340
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 281
    :cond_2
    :try_start_2
    sget-boolean v3, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v3, :cond_3

    .line 282
    const-string v3, "KahunaAnalytics"

    const-string v4, "Initializing SDK version: 489"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 286
    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 287
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mAppName:Ljava/lang/String;

    .line 289
    iget-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 290
    .local v2, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mAppVersion:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 300
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    :try_start_4
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getGUID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mDeviceId:Ljava/lang/String;

    .line 303
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mOSVersion:Ljava/lang/String;

    .line 306
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mDeviceName:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 310
    :try_start_5
    iget-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaPreferences;->getUserCredentials(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mUserCredentials:Ljava/util/Map;

    .line 312
    iget-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaPreferences;->getPushEnabled(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mPushEnabled:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 319
    :cond_4
    :goto_2
    :try_start_6
    iget-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaPreferences;->getShouldInsertCreds(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mShouldInsertUserCreds:Z

    .line 321
    iget-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaPreferences;->getSupportLibMissing(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mSupportLibMissing:Z

    .line 323
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 324
    iget-object v4, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mEventsLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 325
    :try_start_7
    iget-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mEventsQueue:Ljava/util/List;

    if-nez v3, :cond_5

    .line 326
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mEventsQueue:Ljava/util/List;

    .line 327
    :cond_5
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 328
    const/4 v3, 0x0

    :try_start_8
    iput-boolean v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mConnectionInProgress:Z

    .line 330
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mIsInitialized:Z

    .line 332
    iget-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugBuild:Z

    .line 333
    iget-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaPreferences;->getSavedSDKConfiguration(Landroid/content/Context;)Lcom/kahuna/sdk/KahunaSDKConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mSDKConfig:Lcom/kahuna/sdk/KahunaSDKConfiguration;

    .line 334
    iget-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaPreferences;->getLastFlushTimestamp(Landroid/content/Context;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mLastBatchSentTimestamp:J

    .line 336
    sget-boolean v3, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v3, :cond_1

    .line 337
    const-string v3, "KahunaAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading SDK Config:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mSDKConfig:Lcom/kahuna/sdk/KahunaSDKConfiguration;

    invoke-virtual {v5}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->getVersion()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " flushInterval: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mSDKConfig:Lcom/kahuna/sdk/KahunaSDKConfiguration;

    invoke-virtual {v5}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->getFlushIntervalMinutes()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " flushEventCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mSDKConfig:Lcom/kahuna/sdk/KahunaSDKConfiguration;

    invoke-virtual {v5}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->getFlushOnEventCount()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " events:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mSDKConfig:Lcom/kahuna/sdk/KahunaSDKConfiguration;

    invoke-virtual {v5}, Lcom/kahuna/sdk/KahunaSDKConfiguration;->getTriggerEvents()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 291
    :catch_0
    move-exception v1

    .line 292
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v3, :cond_6

    .line 293
    const-string v3, "KahunaAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occured trying to set appName and/or appVersion:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_6
    const-string v3, ""

    iput-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mAppVersion:Ljava/lang/String;

    .line 296
    const-string v3, "unknown"

    iput-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mAppName:Ljava/lang/String;

    goto/16 :goto_1

    .line 314
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 315
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v3, :cond_4

    .line 316
    const-string v3, "KahunaAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occured trying to retrieve previous push enabled setting:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 327
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public static logout()V
    .locals 3

    .prologue
    .line 747
    sget-object v0, Lcom/kahuna/sdk/KahunaAnalytics;->mKahunaExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kahuna/sdk/KahunaBackgroundRunnable;

    new-instance v2, Lcom/kahuna/sdk/KahunaAnalytics$8;

    invoke-direct {v2}, Lcom/kahuna/sdk/KahunaAnalytics$8;-><init>()V

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/KahunaBackgroundRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 773
    return-void
.end method

.method public static onAppCreate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "secretKey"    # Ljava/lang/String;
    .param p2, "pushSenderId"    # Ljava/lang/String;

    .prologue
    .line 204
    if-nez p0, :cond_0

    .line 205
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must have valid Application context to use Kahuna Analytics."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_0
    invoke-static {p1}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Attempted to start Kahuna with invalid key! You must use your api Key with Kahuna"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :cond_1
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v0

    .line 212
    .local v0, "instance":Lcom/kahuna/sdk/KahunaAnalytics;
    iput-object p0, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    .line 213
    iput-object p1, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mKahunaSecretKey:Ljava/lang/String;

    .line 214
    sput-object p2, Lcom/kahuna/sdk/KahunaAnalytics;->senderId:Ljava/lang/String;

    .line 216
    sget-boolean v1, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v1, :cond_2

    .line 217
    const-string v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called onCreate with Key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mKahunaSecretKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_2
    sget-object v1, Lcom/kahuna/sdk/KahunaAnalytics;->mKahunaExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/kahuna/sdk/KahunaBackgroundRunnable;

    new-instance v3, Lcom/kahuna/sdk/KahunaAnalytics$1;

    invoke-direct {v3}, Lcom/kahuna/sdk/KahunaAnalytics$1;-><init>()V

    invoke-direct {v2, v3}, Lcom/kahuna/sdk/KahunaBackgroundRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method

.method public static registerInAppMessageListener(Lcom/kahuna/sdk/KahunaInAppMessageListener;)V
    .locals 1
    .param p0, "inAppMessageListener"    # Lcom/kahuna/sdk/KahunaInAppMessageListener;

    .prologue
    .line 1238
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kahuna/sdk/KahunaAnalytics;->inAppFeatureSupported:Z

    .line 1239
    sput-object p0, Lcom/kahuna/sdk/KahunaAnalytics;->mInAppMessageListener:Lcom/kahuna/sdk/KahunaInAppMessageListener;

    .line 1240
    return-void
.end method

.method public static removeUserCredential(Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 677
    sget-object v0, Lcom/kahuna/sdk/KahunaAnalytics;->mKahunaExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kahuna/sdk/KahunaBackgroundRunnable;

    new-instance v2, Lcom/kahuna/sdk/KahunaAnalytics$6;

    invoke-direct {v2, p0}, Lcom/kahuna/sdk/KahunaAnalytics$6;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/KahunaBackgroundRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 715
    return-void
.end method

.method private declared-synchronized resetExponentialBackoffTimerValue()V
    .locals 1

    .prologue
    .line 1457
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mRetryAttempt:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1458
    monitor-exit p0

    return-void

    .line 1457
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static setDebugMode(Z)V
    .locals 0
    .param p0, "debug"    # Z

    .prologue
    .line 1207
    sput-boolean p0, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    .line 1208
    return-void
.end method

.method public static setExternalDeviceId(Ljava/lang/String;)V
    .locals 6
    .param p0, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 551
    :try_start_0
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v3

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaPreferences;->getSavedDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 553
    .local v2, "prevGUID":Ljava/lang/String;
    invoke-static {v2}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 555
    :cond_0
    if-eqz p0, :cond_1

    const-string v3, "9774d56d682e549c"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xf

    if-ge v3, v4, :cond_4

    .line 558
    :cond_1
    invoke-static {v2}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 579
    .end local v2    # "prevGUID":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 563
    .restart local v2    # "prevGUID":Ljava/lang/String;
    :cond_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "newGUID":Ljava/lang/String;
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v3

    iput-object v1, v3, Lcom/kahuna/sdk/KahunaAnalytics;->mDeviceId:Ljava/lang/String;

    .line 565
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v3

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/kahuna/sdk/KahunaPreferences;->saveDeviceId(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 575
    .end local v1    # "newGUID":Ljava/lang/String;
    .end local v2    # "prevGUID":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KahunaAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handled exception in KahunaAnalytics.setExternalDevice(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 570
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "prevGUID":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v3

    iput-object p0, v3, Lcom/kahuna/sdk/KahunaAnalytics;->mDeviceId:Ljava/lang/String;

    .line 571
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v3

    iget-object v3, v3, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    invoke-static {p0, v3}, Lcom/kahuna/sdk/KahunaPreferences;->saveDeviceId(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setIconResourceId(I)V
    .locals 0
    .param p0, "resourceId"    # I

    .prologue
    .line 1257
    sput p0, Lcom/kahuna/sdk/KahunaAnalytics;->iconOverrideId:I

    .line 1258
    return-void
.end method

.method public static setPushReceiver(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1219
    .local p0, "pushReceiver":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sput-object p0, Lcom/kahuna/sdk/KahunaAnalytics;->pushCustomReceiver:Ljava/lang/Class;

    .line 1220
    return-void
.end method

.method protected static declared-synchronized setPushToken(Ljava/lang/String;)V
    .locals 10
    .param p0, "token"    # Ljava/lang/String;

    .prologue
    .line 1168
    const-class v9, Lcom/kahuna/sdk/KahunaAnalytics;

    monitor-enter v9

    :try_start_0
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v8

    .line 1169
    .local v8, "instance":Lcom/kahuna/sdk/KahunaAnalytics;
    invoke-static {p0}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1172
    const-string v1, ""

    iput-object v1, v8, Lcom/kahuna/sdk/KahunaAnalytics;->mPushToken:Ljava/lang/String;

    .line 1173
    iget-object v1, v8, Lcom/kahuna/sdk/KahunaAnalytics;->mPushToken:Ljava/lang/String;

    iget-object v2, v8, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/kahuna/sdk/KahunaPreferences;->savePushToken(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1186
    :goto_0
    monitor-exit v9

    return-void

    .line 1177
    :cond_0
    :try_start_1
    iput-object p0, v8, Lcom/kahuna/sdk/KahunaAnalytics;->mPushToken:Ljava/lang/String;

    .line 1180
    iget-object v1, v8, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/kahuna/sdk/KahunaPreferences;->getSavedPushToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1181
    new-instance v0, Lcom/kahuna/sdk/KAEvent;

    const-string v1, "k_push_enabled"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/kahuna/sdk/KAEvent;-><init>(Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 1182
    .local v0, "event":Lcom/kahuna/sdk/KAEvent;
    invoke-direct {v8, v0}, Lcom/kahuna/sdk/KahunaAnalytics;->trackEventInternal(Lcom/kahuna/sdk/KAEvent;)V

    .line 1185
    .end local v0    # "event":Lcom/kahuna/sdk/KAEvent;
    :cond_1
    iget-object v1, v8, Lcom/kahuna/sdk/KahunaAnalytics;->mPushToken:Ljava/lang/String;

    iget-object v2, v8, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/kahuna/sdk/KahunaPreferences;->savePushToken(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1168
    .end local v8    # "instance":Lcom/kahuna/sdk/KahunaAnalytics;
    :catchall_0
    move-exception v1

    monitor-exit v9

    throw v1
.end method

.method protected static setSupportLibMissing(Z)V
    .locals 2
    .param p0, "libMissing"    # Z

    .prologue
    .line 1265
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v0

    .line 1266
    .local v0, "instance":Lcom/kahuna/sdk/KahunaAnalytics;
    iget-object v1, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/kahuna/sdk/KahunaPreferences;->saveSupportLibMissing(ZLandroid/content/Context;)V

    .line 1267
    iput-boolean p0, v0, Lcom/kahuna/sdk/KahunaAnalytics;->mSupportLibMissing:Z

    .line 1268
    return-void
.end method

.method public static setUserAttributes(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 785
    .local p0, "userAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/kahuna/sdk/KahunaAnalytics;->mKahunaExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kahuna/sdk/KahunaBackgroundRunnable;

    new-instance v2, Lcom/kahuna/sdk/KahunaAnalytics$9;

    invoke-direct {v2, p0}, Lcom/kahuna/sdk/KahunaAnalytics$9;-><init>(Ljava/util/Map;)V

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/KahunaBackgroundRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 793
    return-void
.end method

.method private static setUserAttributesInternal(Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 797
    .local p0, "userAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 799
    :try_start_0
    sget-boolean v1, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v1, :cond_0

    .line 800
    const-string v1, "KahunaAnalytics"

    const-string v2, "You must specify a valid Map for user Attributes. Ignoring this call to setUserAttributes"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 805
    :cond_1
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v1

    invoke-direct {v1}, Lcom/kahuna/sdk/KahunaAnalytics;->getUserAttributesInternal()Ljava/util/Map;

    move-result-object v12

    .line 806
    .local v12, "mergedHashmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 807
    .local v5, "deltaHashmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 809
    .local v8, "attsChanged":Z
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 810
    .local v11, "key":Ljava/lang/String;
    invoke-interface {v12, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 811
    invoke-interface {p0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v12, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    invoke-interface {p0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    const/4 v8, 0x1

    goto :goto_1

    .line 815
    :cond_3
    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {p0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    .line 817
    :cond_4
    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 819
    invoke-interface {p0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v12, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    invoke-interface {p0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    const/4 v8, 0x1

    goto :goto_1

    .line 824
    :cond_5
    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 825
    invoke-interface {p0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v12, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    invoke-interface {p0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    const/4 v8, 0x1

    goto :goto_1

    .line 831
    .end local v11    # "key":Ljava/lang/String;
    :cond_6
    if-eqz v8, :cond_7

    .line 832
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v1

    iget-object v1, v1, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    invoke-static {v12, v1}, Lcom/kahuna/sdk/KahunaPreferences;->saveUserAttributes(Ljava/util/Map;Landroid/content/Context;)V

    .line 833
    new-instance v0, Lcom/kahuna/sdk/KAEvent;

    const-string v1, "k_user_attributes"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/kahuna/sdk/KAEvent;-><init>(Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 834
    .local v0, "event":Lcom/kahuna/sdk/KAEvent;
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v1

    invoke-direct {v1, v0}, Lcom/kahuna/sdk/KahunaAnalytics;->trackEventInternal(Lcom/kahuna/sdk/KAEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 841
    .end local v0    # "event":Lcom/kahuna/sdk/KAEvent;
    .end local v5    # "deltaHashmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "attsChanged":Z
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "mergedHashmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v9

    .line 842
    .local v9, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v1, :cond_0

    .line 843
    const-string v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception attempting to set user attributes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 837
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v5    # "deltaHashmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "attsChanged":Z
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v12    # "mergedHashmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    :try_start_1
    sget-boolean v1, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v1, :cond_0

    .line 838
    const-string v1, "KahunaAnalytics"

    const-string v2, "Did not detect any change in user attributes, not sending request..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static setUserCredential(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 617
    sget-object v0, Lcom/kahuna/sdk/KahunaAnalytics;->mKahunaExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kahuna/sdk/KahunaBackgroundRunnable;

    new-instance v2, Lcom/kahuna/sdk/KahunaAnalytics$5;

    invoke-direct {v2, p0, p1}, Lcom/kahuna/sdk/KahunaAnalytics$5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/KahunaBackgroundRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 625
    return-void
.end method

.method private static setUserCredentialInternal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 630
    :try_start_0
    invoke-static {p0}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 631
    sget-boolean v3, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v3, :cond_0

    .line 632
    const-string v3, "KahunaAnalytics"

    const-string v4, "Cannot update a user credential with empty string or null key value."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v3

    invoke-direct {v3}, Lcom/kahuna/sdk/KahunaAnalytics;->getUserCredentialsInternal()Ljava/util/Map;

    move-result-object v2

    .line 639
    .local v2, "storedCredentials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 640
    sget-boolean v3, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v3, :cond_0

    .line 641
    const-string v3, "KahunaAnalytics"

    const-string v4, "Did not detect any change in user credentials."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 663
    .end local v2    # "storedCredentials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KahunaAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handled exception in KahunaAnalytics.updateUserCredentials(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 646
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "storedCredentials":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 647
    sget-boolean v3, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v3, :cond_0

    .line 648
    const-string v3, "KahunaAnalytics"

    const-string v4, "Did not detect any change in user credentials."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 654
    :cond_3
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v1

    .line 655
    .local v1, "instance":Lcom/kahuna/sdk/KahunaAnalytics;
    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    iget-object v3, v1, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/kahuna/sdk/KahunaPreferences;->saveUserCredentials(Ljava/util/Map;Landroid/content/Context;)V

    .line 657
    iput-object v2, v1, Lcom/kahuna/sdk/KahunaAnalytics;->mUserCredentials:Ljava/util/Map;

    .line 660
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/kahuna/sdk/KahunaAnalytics;->mShouldInsertUserCreds:Z

    .line 661
    iget-boolean v3, v1, Lcom/kahuna/sdk/KahunaAnalytics;->mShouldInsertUserCreds:Z

    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v4

    iget-object v4, v4, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/kahuna/sdk/KahunaPreferences;->saveShouldInsertCreds(ZLandroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setUsernameAndEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 595
    sget-object v0, Lcom/kahuna/sdk/KahunaAnalytics;->mKahunaExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kahuna/sdk/KahunaBackgroundRunnable;

    new-instance v2, Lcom/kahuna/sdk/KahunaAnalytics$4;

    invoke-direct {v2, p0, p1}, Lcom/kahuna/sdk/KahunaAnalytics$4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/KahunaBackgroundRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 604
    return-void
.end method

.method public static start()V
    .locals 4

    .prologue
    .line 349
    :try_start_0
    sget-object v1, Lcom/kahuna/sdk/KahunaAnalytics;->mKahunaExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/kahuna/sdk/KahunaBackgroundRunnable;

    new-instance v3, Lcom/kahuna/sdk/KahunaAnalytics$2;

    invoke-direct {v3}, Lcom/kahuna/sdk/KahunaAnalytics$2;-><init>()V

    invoke-direct {v2, v3}, Lcom/kahuna/sdk/KahunaBackgroundRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 451
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 453
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handled exception in KahunaAnalytics.start(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static stop()V
    .locals 4

    .prologue
    .line 464
    :try_start_0
    sget-object v1, Lcom/kahuna/sdk/KahunaAnalytics;->mKahunaExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/kahuna/sdk/KahunaBackgroundRunnable;

    new-instance v3, Lcom/kahuna/sdk/KahunaAnalytics$3;

    invoke-direct {v3}, Lcom/kahuna/sdk/KahunaAnalytics$3;-><init>()V

    invoke-direct {v2, v3}, Lcom/kahuna/sdk/KahunaBackgroundRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 532
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 534
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handled exception in KahunaAnalytics.stop(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static trackEvent(Ljava/lang/String;)V
    .locals 3
    .param p0, "eventName"    # Ljava/lang/String;

    .prologue
    .line 915
    sget-object v0, Lcom/kahuna/sdk/KahunaAnalytics;->mKahunaExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kahuna/sdk/KahunaBackgroundRunnable;

    new-instance v2, Lcom/kahuna/sdk/KahunaAnalytics$11;

    invoke-direct {v2, p0}, Lcom/kahuna/sdk/KahunaAnalytics$11;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/KahunaBackgroundRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 935
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;II)V
    .locals 3
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "count"    # I
    .param p2, "value"    # I

    .prologue
    .line 938
    sget-object v0, Lcom/kahuna/sdk/KahunaAnalytics;->mKahunaExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kahuna/sdk/KahunaBackgroundRunnable;

    new-instance v2, Lcom/kahuna/sdk/KahunaAnalytics$12;

    invoke-direct {v2, p0, p1, p2}, Lcom/kahuna/sdk/KahunaAnalytics$12;-><init>(Ljava/lang/String;II)V

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/KahunaBackgroundRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 960
    return-void
.end method

.method private trackEventInternal(Lcom/kahuna/sdk/KAEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/kahuna/sdk/KAEvent;

    .prologue
    .line 964
    invoke-virtual {p1}, Lcom/kahuna/sdk/KAEvent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kahuna/sdk/KahunaUtils;->isNullOrEmptyString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 965
    sget-boolean v3, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v3, :cond_0

    .line 966
    const-string v3, "KahunaAnalytics"

    const-string v4, "Cannot track null or empty event name"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_0
    :goto_0
    return-void

    .line 971
    :cond_1
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v1

    .line 972
    .local v1, "instance":Lcom/kahuna/sdk/KahunaAnalytics;
    iget-boolean v3, v1, Lcom/kahuna/sdk/KahunaAnalytics;->mIsInitialized:Z

    if-nez v3, :cond_2

    .line 973
    invoke-direct {v1}, Lcom/kahuna/sdk/KahunaAnalytics;->initializeInstance()V

    .line 975
    :cond_2
    iget-object v4, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mEventsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 976
    :try_start_0
    iget-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mEventsQueue:Ljava/util/List;

    if-nez v3, :cond_3

    .line 978
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mEventsQueue:Ljava/util/List;

    .line 980
    :cond_3
    move-object v0, p1

    .line 983
    .local v0, "eventToAdd":Lcom/kahuna/sdk/KAEvent;
    iget-boolean v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mShouldInsertUserCreds:Z

    if-eqz v3, :cond_4

    .line 985
    invoke-virtual {p1}, Lcom/kahuna/sdk/KAEvent;->getName()Ljava/lang/String;

    move-result-object v2

    .line 986
    .local v2, "name":Ljava/lang/String;
    const-string v3, "k_remove_credential"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "k_user_logout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 987
    new-instance v0, Lcom/kahuna/sdk/KAEvent;

    .end local v0    # "eventToAdd":Lcom/kahuna/sdk/KAEvent;
    invoke-direct {v0, p1}, Lcom/kahuna/sdk/KAEvent;-><init>(Lcom/kahuna/sdk/KAEvent;)V

    .line 988
    .restart local v0    # "eventToAdd":Lcom/kahuna/sdk/KAEvent;
    iget-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mUserCredentials:Ljava/util/Map;

    invoke-virtual {v0, v3}, Lcom/kahuna/sdk/KAEvent;->setUserCredentials(Ljava/util/Map;)V

    .line 989
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mShouldInsertUserCreds:Z

    .line 990
    iget-boolean v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mShouldInsertUserCreds:Z

    iget-object v5, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mAppContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/kahuna/sdk/KahunaPreferences;->saveShouldInsertCreds(ZLandroid/content/Context;)V

    .line 994
    .end local v2    # "name":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mEventsQueue:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 997
    sget-boolean v3, Lcom/kahuna/sdk/KahunaAnalytics;->mDebugEnabled:Z

    if-eqz v3, :cond_5

    .line 998
    const-string v3, "KahunaAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Queueing event:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/kahuna/sdk/KAEvent;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_5
    iget-boolean v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mIsInitialized:Z

    if-eqz v3, :cond_7

    .line 1001
    iget-object v4, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mConnectionProgressLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1002
    :try_start_1
    iget-boolean v3, p0, Lcom/kahuna/sdk/KahunaAnalytics;->mConnectionInProgress:Z

    if-eqz v3, :cond_6

    .line 1003
    monitor-exit v4

    goto :goto_0

    .line 1004
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 995
    .end local v0    # "eventToAdd":Lcom/kahuna/sdk/KAEvent;
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 1004
    .restart local v0    # "eventToAdd":Lcom/kahuna/sdk/KAEvent;
    :cond_6
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1006
    invoke-virtual {p1}, Lcom/kahuna/sdk/KAEvent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/kahuna/sdk/KahunaAnalytics;->handleBatchScheduling(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1009
    :cond_7
    const-string v3, "KahunaAnalytics"

    const-string v4, "Please call the method onAppCreate() with your secretKey before trackEvent otherwise events cannot be logged"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected static trackPushClickedEvent(Ljava/lang/String;)V
    .locals 10
    .param p0, "trackingId"    # Ljava/lang/String;

    .prologue
    .line 1015
    :try_start_0
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->getSharedInstance()Lcom/kahuna/sdk/KahunaAnalytics;

    move-result-object v9

    .line 1016
    .local v9, "instance":Lcom/kahuna/sdk/KahunaAnalytics;
    new-instance v0, Lcom/kahuna/sdk/KAEvent;

    const-string v1, "k_push_clicked"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/kahuna/sdk/KAEvent;-><init>(Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 1017
    .local v0, "event":Lcom/kahuna/sdk/KAEvent;
    sget-boolean v1, Lcom/kahuna/sdk/KahunaAnalytics;->sdkPushLaunchOverride:Z

    if-eqz v1, :cond_0

    .line 1018
    invoke-virtual {v0}, Lcom/kahuna/sdk/KAEvent;->setPushClickedOverride()V

    .line 1019
    :cond_0
    invoke-direct {v9, v0}, Lcom/kahuna/sdk/KahunaAnalytics;->trackEventInternal(Lcom/kahuna/sdk/KAEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    .end local v0    # "event":Lcom/kahuna/sdk/KAEvent;
    .end local v9    # "instance":Lcom/kahuna/sdk/KahunaAnalytics;
    :goto_0
    return-void

    .line 1021
    :catch_0
    move-exception v8

    .line 1023
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handled exception in KahunaAnalytics.trackPushClicked(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static trackRegionMonitoringEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "regionId"    # Ljava/lang/String;
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 1028
    sget-object v0, Lcom/kahuna/sdk/KahunaAnalytics;->mKahunaExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kahuna/sdk/KahunaBackgroundRunnable;

    new-instance v2, Lcom/kahuna/sdk/KahunaAnalytics$13;

    invoke-direct {v2, p0, p1}, Lcom/kahuna/sdk/KahunaAnalytics$13;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/KahunaBackgroundRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1050
    return-void
.end method

.method public static unregisterInAppMessageReceiver()V
    .locals 1

    .prologue
    .line 1249
    const/4 v0, 0x0

    sput-object v0, Lcom/kahuna/sdk/KahunaAnalytics;->mInAppMessageListener:Lcom/kahuna/sdk/KahunaInAppMessageListener;

    .line 1250
    return-void
.end method
