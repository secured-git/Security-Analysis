.class Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$ExpiredStampsListener;
.super Ljava/lang/Object;
.source "StemplesFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpiredStampsListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/yopeso/lieferando/model/Stamp;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$ExpiredStampsListener;->this$0:Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$ExpiredStampsListener;)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$ExpiredStampsListener;-><init>(Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$ExpiredStampsListener;->this$0:Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->access$2(Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;)V

    .line 177
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$ExpiredStampsListener;->this$0:Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->access$3(Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;Lcom/android/volley/VolleyError;)V

    .line 178
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$ExpiredStampsListener;->onResponse(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onResponse(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/Stamp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "stamps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Stamp;>;"
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$ExpiredStampsListener;->this$0:Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->access$2(Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;)V

    .line 170
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$ExpiredStampsListener;->this$0:Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->mStamps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 171
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$ExpiredStampsListener;->this$0:Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->setHeaders()V

    .line 172
    return-void
.end method
