.class Lcom/google/android/gms/maps/GoogleMap$8;
.super Lcom/google/android/gms/maps/internal/zzi$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaFB:Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;

.field final synthetic zzaFs:Lcom/google/android/gms/maps/GoogleMap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$8;->zzaFs:Lcom/google/android/gms/maps/GoogleMap;

    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$8;->zzaFB:Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzi$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1
    .param p1, "point"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$8;->zzaFB:Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;->onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method
