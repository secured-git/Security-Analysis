.class Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$UploadImagesTask;
.super Landroid/os/AsyncTask;
.source "MainAccountFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadImagesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V
    .locals 0

    .prologue
    .line 1310
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$UploadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$UploadImagesTask;)V
    .locals 0

    .prologue
    .line 1310
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$UploadImagesTask;-><init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$UploadImagesTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
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
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$UploadImagesTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "MainAccountFragment$UploadImagesTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    :goto_0
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$UploadImagesTask;->doInBackground([Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "MainAccountFragment$UploadImagesTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected varargs doInBackground([Landroid/net/Uri;)Lorg/json/JSONObject;
    .locals 9
    .param p1, "params"    # [Landroid/net/Uri;

    .prologue
    const/4 v7, 0x0

    .line 1314
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1315
    .local v6, "prs":Lorg/json/JSONObject;
    aget-object v5, p1, v7

    .line 1317
    .local v5, "imageUri":Landroid/net/Uri;
    :try_start_0
    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$UploadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v7, v5}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$29(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Landroid/net/Uri;)V

    .line 1319
    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$UploadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->rotateBitmapOrientation(Ljava/lang/String;)V

    .line 1321
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$UploadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v8}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/yopeso/lieferando/util/ImageUtils;->getThumbnail(Landroid/net/Uri;ZLandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1323
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1324
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x32

    invoke-virtual {v2, v7, v8, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1326
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 1327
    .local v0, "b":[B
    const/4 v7, 0x0

    invoke-static {v0, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 1329
    .local v4, "encodedImage":Ljava/lang/String;
    const-string v7, "picture"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1340
    .end local v0    # "b":[B
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "encodedImage":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 1330
    :catch_0
    move-exception v3

    .line 1331
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1332
    .end local v3    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v3

    .line 1333
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1334
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 1335
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1336
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 1337
    .local v3, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$UploadImagesTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "MainAccountFragment$UploadImagesTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    :goto_0
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$UploadImagesTask;->onPostExecute(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "MainAccountFragment$UploadImagesTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "params"    # Lorg/json/JSONObject;

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$UploadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/ImageRequest;

    new-instance v2, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$ImageListener;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$UploadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$ImageListener;-><init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$ImageListener;)V

    invoke-direct {v1, p1, v2}, Lcom/yopeso/lieferando/net/requests/ImageRequest;-><init>(Lorg/json/JSONObject;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/ImageRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1345
    return-void
.end method
