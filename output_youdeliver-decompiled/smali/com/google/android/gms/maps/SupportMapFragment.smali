.class public Lcom/google/android/gms/maps/SupportMapFragment;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/SupportMapFragment$zzb;,
        Lcom/google/android/gms/maps/SupportMapFragment$zza;
    }
.end annotation


# instance fields
.field private zzaFV:Lcom/google/android/gms/maps/GoogleMap;

.field private final zzaGH:Lcom/google/android/gms/maps/SupportMapFragment$zzb;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzaGH:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    return-void
.end method

.method public static newInstance()Lcom/google/android/gms/maps/SupportMapFragment;
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-direct {v0}, Lcom/google/android/gms/maps/SupportMapFragment;-><init>()V

    return-object v0
.end method

.method public static newInstance(Lcom/google/android/gms/maps/GoogleMapOptions;)Lcom/google/android/gms/maps/SupportMapFragment;
    .locals 3
    .param p0, "options"    # Lcom/google/android/gms/maps/GoogleMapOptions;

    .prologue
    new-instance v0, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-direct {v0}, Lcom/google/android/gms/maps/SupportMapFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "MapOptions"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/SupportMapFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public final getMap()Lcom/google/android/gms/maps/GoogleMap;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/maps/SupportMapFragment;->zzwO()Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->getMap()Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzaFV:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzaFV:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->zzwD()Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v0, v2, :cond_3

    :cond_2
    new-instance v0, Lcom/google/android/gms/maps/GoogleMap;

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;-><init>(Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzaFV:Lcom/google/android/gms/maps/GoogleMap;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzaFV:Lcom/google/android/gms/maps/GoogleMap;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/google/android/gms/maps/OnMapReadyCallback;

    .prologue
    const-string v0, "getMapAsync must be called on the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzch(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzaGH:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    if-eqz p1, :cond_0

    const-class v0, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzaGH:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    invoke-static {v0, p1}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->zza(Lcom/google/android/gms/maps/SupportMapFragment$zzb;Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "SupportMapFragment"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "SupportMapFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzaGH:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "SupportMapFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "SupportMapFragment#onCreateView"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzaGH:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "SupportMapFragment#onCreateView"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzaGH:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->onDestroy()V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzaGH:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->onDestroyView()V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzaGH:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    invoke-static {v0, p1}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->zza(Lcom/google/android/gms/maps/SupportMapFragment$zzb;Landroid/app/Activity;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/maps/GoogleMapOptions;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "MapOptions"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzaGH:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    invoke-virtual {v0, p1, v1, p3}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzaGH:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->onLowMemory()V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzaGH:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->onPause()V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzaGH:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    if-eqz p1, :cond_0

    const-class v0, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzaGH:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method protected zzwO()Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzaGH:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->zzwP()V

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzaGH:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->zzrn()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportMapFragment;->zzaGH:Lcom/google/android/gms/maps/SupportMapFragment$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment$zzb;->zzrn()Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment$zza;->zzwO()Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    move-result-object v0

    goto :goto_0
.end method
