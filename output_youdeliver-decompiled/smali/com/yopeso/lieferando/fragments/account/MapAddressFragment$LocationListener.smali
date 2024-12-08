.class Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$LocationListener;
.super Ljava/lang/Object;
.source "MapAddressFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/yopeso/lieferando/model/LocationSuggestion;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V
    .locals 0

    .prologue
    .line 980
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$LocationListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 999
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$LocationListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$1(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Lcom/android/volley/VolleyError;)V

    .line 1000
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$LocationListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$3(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V

    .line 1001
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$LocationListener;->onResponse(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onResponse(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/LocationSuggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    const/4 v3, 0x0

    .line 984
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 986
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$LocationListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$12(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$LocationListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    sget v2, Lcom/yopeso/lieferando/R$string;->noDelivery:I

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 987
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$LocationListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$11(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 988
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$LocationListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$8(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Landroid/location/Address;)V

    .line 993
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$LocationListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$14(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 994
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$LocationListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$3(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V

    .line 995
    return-void
.end method
