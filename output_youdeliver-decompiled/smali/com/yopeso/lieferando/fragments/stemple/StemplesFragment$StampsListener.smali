.class Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$StampsListener;
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
    name = "StampsListener"
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
    .line 115
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$StampsListener;->this$0:Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$StampsListener;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$StampsListener;-><init>(Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$StampsListener;->this$0:Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->access$0(Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$StampsListener;->this$0:Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->access$2(Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;)V

    .line 133
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$StampsListener;->this$0:Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->access$3(Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;Lcom/android/volley/VolleyError;)V

    .line 134
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$StampsListener;->onResponse(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onResponse(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 118
    .local p1, "stamps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Stamp;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$StampsListener;->this$0:Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->access$0(Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$StampsListener;->this$0:Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;

    sget v2, Lcom/yopeso/lieferando/R$string;->stemp_list_empty:I

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :goto_0
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/model/user/UserData;->setStampCards(Ljava/util/ArrayList;)V

    .line 125
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$StampsListener;->this$0:Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->mStamps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 126
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$StampsListener;->this$0:Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->access$1(Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;)V

    .line 127
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment$StampsListener;->this$0:Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;->access$0(Lcom/yopeso/lieferando/fragments/stemple/StemplesFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
