.class Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$CityListener;
.super Ljava/lang/Object;
.source "DeliveryPickDialog.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CityListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/yopeso/lieferando/model/LocationSuggestion;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$CityListener;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$CityListener;)V
    .locals 0

    .prologue
    .line 579
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$CityListener;-><init>(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "arg0"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 591
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$CityListener;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->serverError:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 592
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$CityListener;->onResponse(Ljava/util/List;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/LocationSuggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 583
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$CityListener;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-static {v0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->access$0(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$CityListener;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->showLocationSuggestions(Ljava/util/List;)V

    .line 585
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$CityListener;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->showDropDown()V

    .line 587
    :cond_0
    return-void
.end method
