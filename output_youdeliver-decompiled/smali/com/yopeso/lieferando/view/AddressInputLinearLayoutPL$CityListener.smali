.class Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$CityListener;
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
.field final synthetic this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$CityListener;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$CityListener;)V
    .locals 0

    .prologue
    .line 546
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$CityListener;-><init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "arg0"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 567
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$CityListener;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    iget-object v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    sget v1, Lcom/yopeso/lieferando/R$string;->serverError:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 568
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$CityListener;->onResponse(Ljava/util/List;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;)V
    .locals 2
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
    .line 550
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$CityListener;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$0(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$CityListener;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$1(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$CityListener;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->showLocationSuggestions(Ljava/util/List;)V

    .line 552
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$CityListener;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$2(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->showDropDown()V

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$CityListener;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$1(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$CityListener;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->showLocationSuggestions(Ljava/util/List;)V

    .line 555
    const-class v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CityListener onResponse: mGpsCity != null:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$CityListener;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$2(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$CityListener;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$1(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$CityListener;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    iget-object v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSuggestions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$CityListener;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    iget-object v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$CityListener;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$2(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->showDropDown()V

    goto :goto_0
.end method
