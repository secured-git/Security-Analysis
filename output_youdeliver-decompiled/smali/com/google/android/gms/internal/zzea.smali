.class public final Lcom/google/android/gms/internal/zzea;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgk;
.end annotation


# instance fields
.field public final zzyA:J

.field public final zzyB:Ljava/lang/String;

.field public final zzyC:I

.field public zzyD:I

.field public zzyE:I

.field public final zzyu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzdz;",
            ">;"
        }
    .end annotation
.end field

.field public final zzyv:J

.field public final zzyw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzyx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzyy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzyz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v6, 0x2

    const-wide/16 v4, -0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzM(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mediation Response JSON: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    instance-of v0, v1, Lorg/json/JSONObject;

    if-nez v0, :cond_2

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->v(Ljava/lang/String;)V

    :cond_0
    const-string v0, "ad_networks"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, -0x1

    move v3, v0

    move v0, v2

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_3

    new-instance v8, Lcom/google/android/gms/internal/zzdz;

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/zzdz;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-gez v3, :cond_1

    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/zzea;->zza(Lcom/google/android/gms/internal/zzdz;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v3, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0, v6}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iput v3, p0, Lcom/google/android/gms/internal/zzea;->zzyD:I

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzea;->zzyE:I

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzea;->zzyu:Ljava/util/List;

    const-string v0, "qdata"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzea;->zzyz:Ljava/lang/String;

    const-string v0, "settings"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string v0, "ad_network_timeout_millis"

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzea;->zzyv:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbJ()Lcom/google/android/gms/internal/zzef;

    move-result-object v0

    const-string v1, "click_urls"

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/zzef;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzea;->zzyw:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbJ()Lcom/google/android/gms/internal/zzef;

    move-result-object v0

    const-string v1, "imp_urls"

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/zzef;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzea;->zzyx:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbJ()Lcom/google/android/gms/internal/zzef;

    move-result-object v0

    const-string v1, "nofill_urls"

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/zzef;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzea;->zzyy:Ljava/util/List;

    const-string v0, "refresh"

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_5

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    :goto_2
    iput-wide v0, p0, Lcom/google/android/gms/internal/zzea;->zzyA:J

    const-string v0, "rewards"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_6

    :cond_4
    iput-object v10, p0, Lcom/google/android/gms/internal/zzea;->zzyB:Ljava/lang/String;

    iput v2, p0, Lcom/google/android/gms/internal/zzea;->zzyC:I

    :goto_3
    return-void

    :cond_5
    move-wide v0, v4

    goto :goto_2

    :cond_6
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "rb_type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzea;->zzyB:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "rb_amount"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzea;->zzyC:I

    goto :goto_3

    :cond_7
    iput-wide v4, p0, Lcom/google/android/gms/internal/zzea;->zzyv:J

    iput-object v10, p0, Lcom/google/android/gms/internal/zzea;->zzyw:Ljava/util/List;

    iput-object v10, p0, Lcom/google/android/gms/internal/zzea;->zzyx:Ljava/util/List;

    iput-object v10, p0, Lcom/google/android/gms/internal/zzea;->zzyy:Ljava/util/List;

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzea;->zzyA:J

    iput-object v10, p0, Lcom/google/android/gms/internal/zzea;->zzyB:Ljava/lang/String;

    iput v2, p0, Lcom/google/android/gms/internal/zzea;->zzyC:I

    goto :goto_3
.end method

.method private zza(Lcom/google/android/gms/internal/zzdz;)Z
    .locals 3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzdz;->zzym:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
