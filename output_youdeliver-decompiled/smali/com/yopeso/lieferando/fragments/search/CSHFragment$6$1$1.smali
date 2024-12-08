.class Lcom/yopeso/lieferando/fragments/search/CSHFragment$6$1$1;
.super Ljava/lang/Object;
.source "CSHFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/search/CSHFragment$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/yopeso/lieferando/fragments/search/CSHFragment$6$1;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/search/CSHFragment$6$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6$1$1;->this$2:Lcom/yopeso/lieferando/fragments/search/CSHFragment$6$1;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 306
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6$1$1;->this$2:Lcom/yopeso/lieferando/fragments/search/CSHFragment$6$1;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6$1;->access$0(Lcom/yopeso/lieferando/fragments/search/CSHFragment$6$1;)Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->access$0(Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;)Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 307
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6$1$1;->this$2:Lcom/yopeso/lieferando/fragments/search/CSHFragment$6$1;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6$1;->access$0(Lcom/yopeso/lieferando/fragments/search/CSHFragment$6$1;)Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->access$0(Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;)Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mHouseNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 308
    return-void
.end method
