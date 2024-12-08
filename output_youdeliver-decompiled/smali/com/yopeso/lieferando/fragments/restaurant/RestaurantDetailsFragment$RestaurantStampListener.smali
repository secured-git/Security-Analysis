.class public Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$RestaurantStampListener;
.super Ljava/lang/Object;
.source "RestaurantDetailsFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RestaurantStampListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$RestaurantStampListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$RestaurantStampListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$RestaurantStampListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->access$0(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;Lcom/android/volley/VolleyError;)V

    .line 127
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 2
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$RestaurantStampListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$RestaurantStampListener;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;->access$1(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment;)V

    .line 120
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/events/StampsLoaded;

    invoke-direct {v1}, Lcom/yopeso/lieferando/events/StampsLoaded;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantDetailsFragment$RestaurantStampListener;->onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    return-void
.end method
