.class Lcom/facebook/AppEventsLogger$SessionEventsState;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AppEventsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SessionEventsState"
.end annotation


# static fields
.field public static final ENCODED_EVENTS_KEY:Ljava/lang/String; = "encoded_events"

.field public static final EVENT_COUNT_KEY:Ljava/lang/String; = "event_count"

.field public static final NUM_SKIPPED_KEY:Ljava/lang/String; = "num_skipped"


# instance fields
.field private final MAX_ACCUMULATED_LOG_EVENTS:I

.field private accumulatedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/AppEventsLogger$AppEvent;",
            ">;"
        }
    .end annotation
.end field

.field private attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

.field private hashedDeviceAndAppId:Ljava/lang/String;

.field private inFlightEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/AppEventsLogger$AppEvent;",
            ">;"
        }
    .end annotation
.end field

.field private numSkippedEventsDueToFullBuffer:I

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "identifiers"    # Lcom/facebook/internal/AttributionIdentifiers;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hashedDeviceAndAppId"    # Ljava/lang/String;

    .prologue
    .line 1065
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1052
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    .line 1053
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    .line 1063
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->MAX_ACCUMULATED_LOG_EVENTS:I

    .line 1066
    iput-object p1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    .line 1067
    iput-object p2, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->packageName:Ljava/lang/String;

    .line 1068
    iput-object p3, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->hashedDeviceAndAppId:Ljava/lang/String;

    .line 1069
    return-void
.end method

.method private getStringAsByteArray(Ljava/lang/String;)[B
    .locals 3
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 1177
    const/4 v1, 0x0

    .line 1179
    .local v1, "jsonUtf8":[B
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1184
    :goto_0
    return-object v1

    .line 1180
    :catch_0
    move-exception v0

    .line 1182
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "Encoding exception: "

    invoke-static {v2, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private populateRequest(Lcom/facebook/Request;ILorg/json/JSONArray;ZZ)V
    .locals 5
    .param p1, "request"    # Lcom/facebook/Request;
    .param p2, "numSkipped"    # I
    .param p3, "events"    # Lorg/json/JSONArray;
    .param p4, "includeAttribution"    # Z
    .param p5, "limitEventUsage"    # Z

    .prologue
    .line 1138
    invoke-static {}, Lcom/facebook/model/GraphObject$Factory;->create()Lcom/facebook/model/GraphObject;

    move-result-object v1

    .line 1139
    .local v1, "publishParams":Lcom/facebook/model/GraphObject;
    const-string v3, "event"

    const-string v4, "CUSTOM_APP_EVENTS"

    invoke-interface {v1, v3, v4}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1141
    iget v3, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    if-lez v3, :cond_0

    .line 1142
    const-string v3, "num_skipped_events"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1145
    :cond_0
    if-eqz p4, :cond_1

    .line 1146
    iget-object v3, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    .line 1147
    iget-object v4, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->hashedDeviceAndAppId:Ljava/lang/String;

    .line 1146
    invoke-static {v1, v3, v4, p5}, Lcom/facebook/internal/Utility;->setAppEventAttributionParameters(Lcom/facebook/model/GraphObject;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Z)V

    .line 1154
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/facebook/AppEventsLogger;->access$0()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/facebook/internal/Utility;->setAppEventExtendedDeviceInfoParameters(Lcom/facebook/model/GraphObject;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1159
    :goto_0
    const-string v3, "application_package_name"

    iget-object v4, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1161
    invoke-virtual {p1, v1}, Lcom/facebook/Request;->setGraphObject(Lcom/facebook/model/GraphObject;)V

    .line 1163
    invoke-virtual {p1}, Lcom/facebook/Request;->getParameters()Landroid/os/Bundle;

    move-result-object v2

    .line 1164
    .local v2, "requestParameters":Landroid/os/Bundle;
    if-nez v2, :cond_2

    .line 1165
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "requestParameters":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1168
    .restart local v2    # "requestParameters":Landroid/os/Bundle;
    :cond_2
    instance-of v3, p3, Lorg/json/JSONArray;

    if-nez v3, :cond_4

    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1169
    .end local p3    # "events":Lorg/json/JSONArray;
    .local v0, "jsonString":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_3

    .line 1170
    const-string v3, "custom_events_file"

    invoke-direct {p0, v0}, Lcom/facebook/AppEventsLogger$SessionEventsState;->getStringAsByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1171
    invoke-virtual {p1, v0}, Lcom/facebook/Request;->setTag(Ljava/lang/Object;)V

    .line 1173
    :cond_3
    invoke-virtual {p1, v2}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V

    .line 1174
    return-void

    .line 1168
    .end local v0    # "jsonString":Ljava/lang/String;
    .restart local p3    # "events":Lorg/json/JSONArray;
    :cond_4
    check-cast p3, Lorg/json/JSONArray;

    .end local p3    # "events":Lorg/json/JSONArray;
    invoke-static {p3}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1155
    .end local v2    # "requestParameters":Landroid/os/Bundle;
    .restart local p3    # "events":Lorg/json/JSONArray;
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized accumulatePersistedEvents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/AppEventsLogger$AppEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1133
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/AppEventsLogger$AppEvent;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1134
    monitor-exit p0

    return-void

    .line 1133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addEvent(Lcom/facebook/AppEventsLogger$AppEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/facebook/AppEventsLogger$AppEvent;

    .prologue
    .line 1074
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    .line 1075
    iget v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->numSkippedEventsDueToFullBuffer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    :goto_0
    monitor-exit p0

    return-void

    .line 1077
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1074
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearInFlightAndStats(Z)V
    .locals 2
    .param p1, "moveToAccumulated"    # Z

    .prologue
    .line 1086
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1087
    :try_start_0
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1090
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->numSkippedEventsDueToFullBuffer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1091
    monitor-exit p0

    return-void

    .line 1086
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAccumulatedEventCount()I
    .locals 1

    .prologue
    .line 1082
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEventsToPersist()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/AppEventsLogger$AppEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    .line 1126
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/AppEventsLogger$AppEvent;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1127
    monitor-exit p0

    return-object v0

    .line 1125
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/AppEventsLogger$AppEvent;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public populateRequest(Lcom/facebook/Request;ZZZ)I
    .locals 7
    .param p1, "request"    # Lcom/facebook/Request;
    .param p2, "includeImplicitEvents"    # Z
    .param p3, "includeAttribution"    # Z
    .param p4, "limitEventUsage"    # Z

    .prologue
    .line 1098
    monitor-enter p0

    .line 1099
    :try_start_0
    iget v2, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    .line 1102
    .local v2, "numSkipped":I
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1103
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1105
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1106
    .local v3, "jsonArray":Lorg/json/JSONArray;
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1112
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 1113
    monitor-exit p0

    const/4 v0, 0x0

    .line 1118
    :goto_1
    return v0

    .line 1106
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/AppEventsLogger$AppEvent;

    .line 1107
    .local v6, "event":Lcom/facebook/AppEventsLogger$AppEvent;
    if-nez p2, :cond_2

    invoke-virtual {v6}, Lcom/facebook/AppEventsLogger$AppEvent;->getIsImplicit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1108
    :cond_2
    invoke-virtual {v6}, Lcom/facebook/AppEventsLogger$AppEvent;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 1098
    .end local v2    # "numSkipped":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "event":Lcom/facebook/AppEventsLogger$AppEvent;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .restart local v2    # "numSkipped":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    .line 1117
    invoke-direct/range {v0 .. v5}, Lcom/facebook/AppEventsLogger$SessionEventsState;->populateRequest(Lcom/facebook/Request;ILorg/json/JSONArray;ZZ)V

    .line 1118
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto :goto_1
.end method
