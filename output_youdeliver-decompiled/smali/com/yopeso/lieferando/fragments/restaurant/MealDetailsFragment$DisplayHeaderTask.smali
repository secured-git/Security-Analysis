.class Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$DisplayHeaderTask;
.super Landroid/os/AsyncTask;
.source "MealDetailsFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayHeaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$DisplayHeaderTask;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$DisplayHeaderTask;)V
    .locals 0

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$DisplayHeaderTask;-><init>(Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;)V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$DisplayHeaderTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$DisplayHeaderTask;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mDish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/DishCategory;->getImgLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$DisplayHeaderTask;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mDish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/DishCategory;->getImgLink()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->getmImage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->getValidURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/HttpUtils;->resourceExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$DisplayHeaderTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "MealDetailsFragment$DisplayHeaderTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    :goto_0
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$DisplayHeaderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "MealDetailsFragment$DisplayHeaderTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 383
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 384
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$DisplayHeaderTask;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mImageHeader:Landroid/widget/ImageView;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getTagFactory()Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$DisplayHeaderTask;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;

    iget-object v2, v2, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mDish:Lcom/yopeso/lieferando/model/meal/DishCategory;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/meal/DishCategory;->getImgLink()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$DisplayHeaderTask;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yopeso/lieferando/util/ImageUtils;->getOptimizedHeaderUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$DisplayHeaderTask;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 386
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getImageLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$DisplayHeaderTask;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mImageHeader:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Lcom/novoda/imageloader/core/loader/Loader;->load(Landroid/widget/ImageView;)V

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$DisplayHeaderTask;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment;->mImageHeader:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$DisplayHeaderTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "MealDetailsFragment$DisplayHeaderTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/MealDetailsFragment$DisplayHeaderTask;->onPostExecute(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "MealDetailsFragment$DisplayHeaderTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
