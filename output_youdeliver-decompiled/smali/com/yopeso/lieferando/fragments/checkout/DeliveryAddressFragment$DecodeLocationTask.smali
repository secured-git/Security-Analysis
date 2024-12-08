.class Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;
.super Landroid/os/AsyncTask;
.source "DeliveryAddressFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeLocationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/location/Location;",
        "Ljava/lang/Void;",
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;)V
    .locals 0

    .prologue
    .line 502
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;->this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;)V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;-><init>(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;)V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected varargs doInBackground([Landroid/location/Location;)Landroid/location/Address;
    .locals 9
    .param p1, "params"    # [Landroid/location/Location;

    .prologue
    const/4 v2, 0x0

    .line 505
    aget-object v8, p1, v2

    .line 506
    .local v8, "location":Landroid/location/Location;
    new-instance v1, Landroid/location/Geocoder;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;->this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {}, Lcom/yopeso/lieferando/util/GeoUtils;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 508
    .local v1, "geocoder":Landroid/location/Geocoder;
    :try_start_0
    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    .line 509
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 510
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    .end local v0    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :goto_0
    return-object v2

    .line 512
    :catch_0
    move-exception v7

    .line 513
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 515
    .end local v7    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "DeliveryAddressFragment$DecodeLocationTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    :goto_0
    check-cast p1, [Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;->doInBackground([Landroid/location/Location;)Landroid/location/Address;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "DeliveryAddressFragment$DecodeLocationTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Landroid/location/Address;)V
    .locals 5
    .param p1, "result"    # Landroid/location/Address;

    .prologue
    .line 520
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 521
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;->this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->access$0(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 522
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;->this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->access$0(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 524
    :cond_0
    if-eqz p1, :cond_2

    .line 525
    invoke-virtual {p1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;->this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->access$1(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;)Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getPlz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 526
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;->this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->defaultAddressNotAvailable:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 540
    :goto_0
    return-void

    .line 530
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;->this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->access$1(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;)Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/model/user/Location;->setStreet(Ljava/lang/String;)V

    .line 531
    invoke-static {p1}, Lcom/yopeso/lieferando/util/GeoUtils;->getHouseNumberFromAddress(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, "houserNr":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 533
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;->this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->access$1(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;)Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/yopeso/lieferando/model/user/Location;->setHnr(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    .end local v1    # "houserNr":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;->this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->displayAddrresInView(Landroid/os/Bundle;)V

    goto :goto_0

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "DeliveryAddressFragment$DecodeLocationTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    :goto_0
    check-cast p1, Landroid/location/Address;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;->onPostExecute(Landroid/location/Address;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "DeliveryAddressFragment$DecodeLocationTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
