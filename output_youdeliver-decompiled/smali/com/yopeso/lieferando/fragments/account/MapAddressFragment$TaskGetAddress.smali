.class Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;
.super Landroid/os/AsyncTask;
.source "MapAddressFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskGetAddress"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V
    .locals 0

    .prologue
    .line 821
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;)V
    .locals 0

    .prologue
    .line 821
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;-><init>(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "MapAddressFragment$TaskGetAddress#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    :goto_0
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "MapAddressFragment$TaskGetAddress#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 824
    sget-object v1, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->TAG:Ljava/lang/String;

    const-string v2, "TaskGetAddress + doInBackground:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const-string v0, ""

    .line 826
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getLRActivity()Lcom/yopeso/lieferando/custom/LRActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v3}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$7(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yopeso/lieferando/util/GeoUtils;->getAddressFromGeoPoints(Landroid/content/Context;Lcom/google/android/gms/maps/model/LatLng;)Landroid/location/Address;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$8(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Landroid/location/Address;)V

    .line 827
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$9(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Landroid/location/Address;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 828
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$9(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Landroid/location/Address;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 829
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$9(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Landroid/location/Address;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 831
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$9(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Landroid/location/Address;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 832
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$9(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Landroid/location/Address;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 836
    :cond_1
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "MapAddressFragment$TaskGetAddress#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    :goto_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;->onPostExecute(Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "MapAddressFragment$TaskGetAddress#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 841
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 842
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$9(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Landroid/location/Address;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 843
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$10(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$11(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    const-class v0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set text: onPostExecute:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$12(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 856
    :cond_0
    :goto_0
    return-void

    .line 852
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$12(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    sget v2, Lcom/yopeso/lieferando/R$string;->noDelivery:I

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 853
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$TaskGetAddress;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$11(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
