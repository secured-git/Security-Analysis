.class public abstract Lcom/google/android/gms/gcm/Task;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/gcm/Task$Builder;
    }
.end annotation


# static fields
.field public static final EXTRAS_LIMIT_BYTES:I = 0x2800

.field public static final NETWORK_STATE_ANY:I = 0x2

.field public static final NETWORK_STATE_CONNECTED:I = 0x0

.field public static final NETWORK_STATE_UNMETERED:I = 0x1

.field protected static final UNINITIALIZED:J = -0x1L


# instance fields
.field private final mExtras:Landroid/os/Bundle;

.field private final mTag:Ljava/lang/String;

.field private final zzaAh:Ljava/lang/String;

.field private final zzaAi:Z

.field private final zzaAj:Z

.field private final zzaAk:I

.field private final zzaAl:Z


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/Task;->zzaAh:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/Task;->mTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->zzaAi:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/gms/gcm/Task;->zzaAj:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/gcm/Task;->zzaAk:I

    iput-boolean v2, p0, Lcom/google/android/gms/gcm/Task;->zzaAl:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/gcm/Task;->mExtras:Landroid/os/Bundle;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method constructor <init>(Lcom/google/android/gms/gcm/Task$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/android/gms/gcm/Task$Builder;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/gcm/Task$Builder;->gcmTaskService:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/gcm/Task;->zzaAh:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/gcm/Task$Builder;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/gcm/Task;->mTag:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/google/android/gms/gcm/Task$Builder;->updateCurrent:Z

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->zzaAi:Z

    iget-boolean v0, p1, Lcom/google/android/gms/gcm/Task$Builder;->isPersisted:Z

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->zzaAj:Z

    iget v0, p1, Lcom/google/android/gms/gcm/Task$Builder;->requiredNetworkState:I

    iput v0, p0, Lcom/google/android/gms/gcm/Task;->zzaAk:I

    iget-boolean v0, p1, Lcom/google/android/gms/gcm/Task$Builder;->requiresCharging:Z

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->zzaAl:Z

    iget-object v0, p1, Lcom/google/android/gms/gcm/Task$Builder;->extras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/gcm/Task;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method private static zzy(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zzz(Landroid/os/Bundle;)V
    .locals 4

    if-eqz p0, :cond_2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    const/16 v2, 0x2800

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extras exceeding maximum size(10240 bytes): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/Task;->zzy(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only the following extra parameter types are supported: Integer, Long, Double, String, and Boolean. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/gcm/Task;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getRequiredNetwork()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/gcm/Task;->zzaAk:I

    return v0
.end method

.method public getRequiresCharging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->zzaAl:Z

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/gcm/Task;->zzaAh:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/gcm/Task;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public isPersisted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->zzaAj:Z

    return v0
.end method

.method public isUpdateCurrent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->zzaAi:Z

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "tag"

    iget-object v1, p0, Lcom/google/android/gms/gcm/Task;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "update_current"

    iget-boolean v1, p0, Lcom/google/android/gms/gcm/Task;->zzaAi:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "persisted"

    iget-boolean v1, p0, Lcom/google/android/gms/gcm/Task;->zzaAj:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "service"

    iget-object v1, p0, Lcom/google/android/gms/gcm/Task;->zzaAh:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "requiredNetwork"

    iget v1, p0, Lcom/google/android/gms/gcm/Task;->zzaAk:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "requiresCharging"

    iget-boolean v1, p0, Lcom/google/android/gms/gcm/Task;->zzaAl:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "extras"

    iget-object v1, p0, Lcom/google/android/gms/gcm/Task;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/gcm/Task;->zzaAh:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/gcm/Task;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->zzaAi:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/google/android/gms/gcm/Task;->zzaAj:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
