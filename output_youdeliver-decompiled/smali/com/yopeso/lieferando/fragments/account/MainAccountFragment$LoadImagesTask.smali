.class Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;
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
    name = "LoadImagesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field blurred:Landroid/graphics/Bitmap;

.field cropped:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V
    .locals 1

    .prologue
    .line 583
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    .line 584
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 579
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->url:Ljava/lang/String;

    .line 585
    return-void
.end method

.method public constructor <init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Ljava/lang/String;)V
    .locals 1
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 579
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->url:Ljava/lang/String;

    .line 581
    iput-object p2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->url:Ljava/lang/String;

    .line 582
    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
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
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "MainAccountFragment$LoadImagesTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    :goto_0
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->doInBackground([Landroid/graphics/Bitmap;)Ljava/lang/Void;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "MainAccountFragment$LoadImagesTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 589
    const/4 v0, 0x0

    .line 590
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    aget-object v1, p1, v2

    if-eqz v1, :cond_1

    .line 591
    aget-object v0, p1, v2

    .line 592
    const-class v1, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LoadImagesTask: get from params"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :goto_0
    if-eqz v0, :cond_0

    .line 611
    invoke-static {v0}, Lcom/yopeso/lieferando/util/ImageUtils;->getCroppedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->cropped:Landroid/graphics/Bitmap;

    .line 612
    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/util/ImageUtils;->fastblur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->blurred:Landroid/graphics/Bitmap;

    .line 614
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 595
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->url:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 597
    const-class v1, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "From url Download: mUserData.getImgUrl()"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/yopeso/lieferando/util/ImageUtils;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 601
    goto :goto_0

    .line 604
    :cond_2
    const-class v1, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Default Download: mUserData.getImgUrl()"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v3}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/UserData;->getImgUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/SettingsContent;->getmImage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->getValidURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getmImage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->getValidURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/ImageUtils;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "MainAccountFragment$LoadImagesTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    :goto_0
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->onPostExecute(Ljava/lang/Void;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "MainAccountFragment$LoadImagesTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const v4, 0x106000b

    .line 620
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$10(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->cropped:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 621
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$11(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->blurred:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 622
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$12(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$color;->picture_mask:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 624
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$13(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 625
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$14(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 626
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$15(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 627
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$16(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 628
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$17(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 629
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$18(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 630
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$19(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 631
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 632
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$20(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V

    .line 633
    return-void
.end method
