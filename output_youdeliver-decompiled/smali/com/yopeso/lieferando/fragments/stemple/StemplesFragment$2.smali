.class Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$2;
.super Ljava/lang/Object;
.source "StemplesFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->getListener()Lcom/yopeso/lieferando/net/requests/base/VolleyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->access$2(Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;)V

    .line 281
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->access$3(Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;Lcom/android/volley/VolleyError;)V

    .line 282
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 1
    .param p1, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->access$2(Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;)V

    .line 275
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->access$4(Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 276
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$2;->onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    return-void
.end method
