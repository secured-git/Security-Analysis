.class public Lcom/google/android/gms/wearable/internal/zzay$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/internal/zzay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# instance fields
.field private final zzQA:Lcom/google/android/gms/common/api/Status;

.field private final zzagq:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzay$zzb;->zzQA:Lcom/google/android/gms/common/api/Status;

    iput p2, p0, Lcom/google/android/gms/wearable/internal/zzay$zzb;->zzagq:I

    return-void
.end method


# virtual methods
.method public getRequestId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wearable/internal/zzay$zzb;->zzagq:I

    return v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzay$zzb;->zzQA:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
