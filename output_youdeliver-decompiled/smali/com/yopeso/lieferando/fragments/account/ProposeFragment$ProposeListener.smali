.class Lcom/yopeso/lieferando/fragments/account/ProposeFragment$ProposeListener;
.super Ljava/lang/Object;
.source "ProposeFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/account/ProposeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProposeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/ProposeFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$ProposeListener;->this$0:Lcom/yopeso/lieferando/fragments/account/ProposeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;Lcom/yopeso/lieferando/fragments/account/ProposeFragment$ProposeListener;)V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$ProposeListener;-><init>(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$ProposeListener;->this$0:Lcom/yopeso/lieferando/fragments/account/ProposeFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$ProposeListener;->this$0:Lcom/yopeso/lieferando/fragments/account/ProposeFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$ProposeListener;->this$0:Lcom/yopeso/lieferando/fragments/account/ProposeFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->access$2(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;Lcom/android/volley/VolleyError;)V

    .line 238
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$ProposeListener;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 5
    .param p1, "proposed"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 217
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$ProposeListener;->this$0:Lcom/yopeso/lieferando/fragments/account/ProposeFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$ProposeListener;->this$0:Lcom/yopeso/lieferando/fragments/account/ProposeFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 220
    :cond_0
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$ProposeListener;->this$0:Lcom/yopeso/lieferando/fragments/account/ProposeFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->access$1(Lcom/yopeso/lieferando/fragments/account/ProposeFragment;)V

    .line 221
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$ProposeListener;->this$0:Lcom/yopeso/lieferando/fragments/account/ProposeFragment;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->propose_scrollableView:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    invoke-virtual {v2, v4, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 222
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$ProposeListener;->this$0:Lcom/yopeso/lieferando/fragments/account/ProposeFragment;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/yopeso/lieferando/R$string;->restaurant_proposed:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "OK"

    new-instance v4, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$ProposeListener$1;

    invoke-direct {v4, p0}, Lcom/yopeso/lieferando/fragments/account/ProposeFragment$ProposeListener$1;-><init>(Lcom/yopeso/lieferando/fragments/account/ProposeFragment$ProposeListener;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 228
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 229
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 230
    return-void
.end method
