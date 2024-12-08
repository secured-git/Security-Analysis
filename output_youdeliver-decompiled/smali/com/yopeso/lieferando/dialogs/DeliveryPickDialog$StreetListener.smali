.class Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$StreetListener;
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
    name = "StreetListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/yopeso/lieferando/model/user/Street;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)V
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$StreetListener;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$StreetListener;)V
    .locals 0

    .prologue
    .line 595
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$StreetListener;-><init>(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "arg0"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 607
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$StreetListener;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->serverError:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 608
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$StreetListener;->onResponse(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onResponse(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/user/Street;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 599
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/user/Street;>;"
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$StreetListener;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-static {v0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->access$1(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$StreetListener;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->access$2(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;Ljava/util/List;)V

    .line 601
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$StreetListener;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->showDropDown()V

    .line 603
    :cond_0
    return-void
.end method
