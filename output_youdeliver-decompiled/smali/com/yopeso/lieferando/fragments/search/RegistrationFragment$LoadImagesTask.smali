.class Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$LoadImagesTask;
.super Landroid/os/AsyncTask;
.source "RegistrationFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadImagesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field blurred:Landroid/graphics/Bitmap;

.field cropped:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)V
    .locals 0

    .prologue
    .line 791
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$LoadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$LoadImagesTask;)V
    .locals 0

    .prologue
    .line 791
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$LoadImagesTask;-><init>(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$LoadImagesTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
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
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$LoadImagesTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "RegistrationFragment$LoadImagesTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    :goto_0
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$LoadImagesTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "RegistrationFragment$LoadImagesTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 797
    :try_start_0
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$LoadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->access$1(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$LoadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/yopeso/lieferando/util/ImageUtils;->getThumbnail(Landroid/net/Uri;ZLandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 799
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/yopeso/lieferando/util/ImageUtils;->getCroppedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$LoadImagesTask;->cropped:Landroid/graphics/Bitmap;

    .line 800
    const/16 v2, 0xa

    invoke-static {v0, v2}, Lcom/yopeso/lieferando/util/ImageUtils;->fastblur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$LoadImagesTask;->blurred:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 806
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 801
    :catch_0
    move-exception v1

    .line 802
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 803
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 804
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$LoadImagesTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "RegistrationFragment$LoadImagesTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    :goto_0
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$LoadImagesTask;->onPostExecute(Ljava/lang/Void;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "RegistrationFragment$LoadImagesTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 813
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$LoadImagesTask;->cropped:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$LoadImagesTask;->blurred:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$LoadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->access$5(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$LoadImagesTask;->cropped:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 816
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$LoadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->access$6(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$LoadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$LoadImagesTask;->blurred:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 817
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$LoadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->access$7(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 818
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$LoadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->access$3(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)V

    .line 821
    return-void
.end method
