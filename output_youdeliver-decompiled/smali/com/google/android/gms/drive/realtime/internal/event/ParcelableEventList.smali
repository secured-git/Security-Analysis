.class public Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzamv:Lcom/google/android/gms/common/data/DataHolder;

.field final zzamw:Z

.field final zzamx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final zzamy:Lcom/google/android/gms/drive/realtime/internal/ParcelableChangeInfo;

.field final zzoP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/realtime/internal/event/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/drive/realtime/internal/event/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Lcom/google/android/gms/common/data/DataHolder;ZLjava/util/List;Lcom/google/android/gms/drive/realtime/internal/ParcelableChangeInfo;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p3, "eventData"    # Lcom/google/android/gms/common/data/DataHolder;
    .param p4, "undoRedoStateChanged"    # Z
    .param p6, "previousChangeInfo"    # Lcom/google/android/gms/drive/realtime/internal/ParcelableChangeInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;",
            ">;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/drive/realtime/internal/ParcelableChangeInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "events":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;>;"
    .local p5, "affectedObjectIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->zzoP:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->zzamv:Lcom/google/android/gms/common/data/DataHolder;

    iput-boolean p4, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->zzamw:Z

    iput-object p5, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->zzamx:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->zzamy:Lcom/google/android/gms/drive/realtime/internal/ParcelableChangeInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/realtime/internal/event/zzd;->zza(Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;Landroid/os/Parcel;I)V

    return-void
.end method
