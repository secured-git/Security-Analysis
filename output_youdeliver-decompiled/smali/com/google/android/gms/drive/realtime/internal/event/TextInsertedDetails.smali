.class public Lcom/google/android/gms/drive/realtime/internal/event/TextInsertedDetails;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/realtime/internal/event/TextInsertedDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mIndex:I

.field final mVersionCode:I

.field final zzamD:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/realtime/internal/event/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/drive/realtime/internal/event/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/realtime/internal/event/TextInsertedDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(III)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "index"    # I
    .param p3, "stringDataIndex"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/realtime/internal/event/TextInsertedDetails;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/drive/realtime/internal/event/TextInsertedDetails;->mIndex:I

    iput p3, p0, Lcom/google/android/gms/drive/realtime/internal/event/TextInsertedDetails;->zzamD:I

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/realtime/internal/event/zzg;->zza(Lcom/google/android/gms/drive/realtime/internal/event/TextInsertedDetails;Landroid/os/Parcel;I)V

    return-void
.end method
