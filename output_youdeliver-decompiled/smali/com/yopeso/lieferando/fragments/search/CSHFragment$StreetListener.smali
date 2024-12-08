.class public Lcom/yopeso/lieferando/fragments/search/CSHFragment$StreetListener;
.super Ljava/lang/Object;
.source "CSHFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/search/CSHFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
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
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;


# direct methods
.method protected constructor <init>(Lcom/yopeso/lieferando/fragments/search/CSHFragment;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$StreetListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "arg0"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$StreetListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->serverError:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 583
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/search/CSHFragment$StreetListener;->onResponse(Ljava/util/ArrayList;)V

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
    .line 571
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/user/Street;>;"
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$StreetListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-boolean v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mStreetProvided:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$StreetListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mGpsStreet:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$StreetListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->access$1(Lcom/yopeso/lieferando/fragments/search/CSHFragment;Ljava/util/ArrayList;)V

    .line 573
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$StreetListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->showDropDown()V

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$StreetListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mGpsStreet:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$StreetListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->access$1(Lcom/yopeso/lieferando/fragments/search/CSHFragment;Ljava/util/ArrayList;)V

    .line 576
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$StreetListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mSearchStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$StreetListener;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    invoke-static {v1, p1}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->access$2(Lcom/yopeso/lieferando/fragments/search/CSHFragment;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
