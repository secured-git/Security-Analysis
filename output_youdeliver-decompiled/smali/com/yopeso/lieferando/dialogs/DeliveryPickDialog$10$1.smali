.class Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10$1;
.super Ljava/lang/Object;
.source "DeliveryPickDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10$1;->this$1:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 515
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10$1;->this$1:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;

    invoke-static {v2}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;->access$0(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;)Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10$1;->this$1:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;

    invoke-static {v3}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;->access$0(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;)Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/SettingsContent;->getRegexp()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->createJsonWithFieldsValue(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    .line 516
    .local v1, "object":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10$1;->this$1:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;

    invoke-static {v2}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;->access$0(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;)Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->access$13(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 517
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10$1;->this$1:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;

    invoke-static {v2}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;->access$0(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;)Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->showLoadingIndicator(I)V

    .line 518
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10$1;->this$1:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;

    invoke-static {v2}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;->access$0(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;)Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->access$14(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 520
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10$1;->this$1:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;

    invoke-static {v2}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;->access$0(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;)Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/net/requests/CreateAddressRequest;

    new-instance v4, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$CreateAddressListener;

    iget-object v5, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10$1;->this$1:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;

    invoke-static {v5}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;->access$0(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;)Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$CreateAddressListener;-><init>(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$CreateAddressListener;)V

    invoke-direct {v3, v1, v4}, Lcom/yopeso/lieferando/net/requests/CreateAddressRequest;-><init>(Lorg/json/JSONObject;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v3}, Lcom/yopeso/lieferando/net/requests/CreateAddressRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10$1;->this$1:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;

    invoke-static {v2}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;->access$0(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;)Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    move-result-object v2

    iget-object v2, v2, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    if-eqz v2, :cond_5

    .line 524
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 525
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10$1;->this$1:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;

    invoke-static {v2}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;->access$0(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;)Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/net/requests/CreateAddressRequest;

    new-instance v4, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$GetAddressListener;

    iget-object v5, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10$1;->this$1:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;

    invoke-static {v5}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;->access$0(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;)Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$GetAddressListener;-><init>(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$GetAddressListener;)V

    invoke-direct {v3, v1, v4}, Lcom/yopeso/lieferando/net/requests/CreateAddressRequest;-><init>(Lorg/json/JSONObject;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v3}, Lcom/yopeso/lieferando/net/requests/CreateAddressRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0

    .line 528
    :cond_2
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10$1;->this$1:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;

    invoke-static {v2}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;->access$0(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;)Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10$1;->this$1:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;

    invoke-static {v3}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;->access$0(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;)Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    move-result-object v3

    iget-object v3, v3, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setAddressAtLocation(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    .line 530
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10$1;->this$1:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;

    invoke-static {v2}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;->access$0(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;)Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->access$15(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 535
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10$1;->this$1:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;

    invoke-static {v2}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;->access$0(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;)Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->dismissLoadingIndicator()V

    goto :goto_0

    .line 530
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;

    .line 531
    .local v0, "da":Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->getCityId()I

    move-result v3

    iget-object v4, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10$1;->this$1:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;

    invoke-static {v4}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;->access$0(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;)Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    move-result-object v4

    iget v4, v4, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCityId:I

    if-ne v3, v4, :cond_3

    .line 532
    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10$1;->this$1:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;

    invoke-static {v3}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;->access$0(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;)Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->onDeliveryAreaSelected(Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;)V

    goto :goto_1

    .line 539
    .end local v0    # "da":Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;
    :cond_5
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10$1;->this$1:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;

    invoke-static {v2}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;->access$0(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;)Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->dismissLoadingIndicator()V

    goto/16 :goto_0
.end method
