.class Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$StreetListener;
.super Ljava/lang/Object;
.source "AddressInputLinearLayoutPL.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;
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
.field final synthetic this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$StreetListener;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$StreetListener;)V
    .locals 0

    .prologue
    .line 571
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$StreetListener;-><init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "arg0"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 589
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$StreetListener;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    iget-object v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    sget v1, Lcom/yopeso/lieferando/R$string;->serverError:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 590
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$StreetListener;->onResponse(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onResponse(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 575
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/user/Street;>;"
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$StreetListener;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$3(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$StreetListener;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$4(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$StreetListener;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$5(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;Ljava/util/List;)V

    .line 577
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$StreetListener;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$6(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->showDropDown()V

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$StreetListener;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$4(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$StreetListener;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$5(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;Ljava/util/List;)V

    .line 580
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$StreetListener;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$6(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$StreetListener;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$4(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$StreetListener;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$7(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$StreetListener;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$7(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$StreetListener;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$8(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;Z)V

    goto :goto_0
.end method
