.class Lcom/yopeso/lieferando/fragments/search/CSHFragment$6$1;
.super Ljava/util/TimerTask;
.source "CSHFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6$1;->this$1:Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;

    .line 299
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/search/CSHFragment$6$1;)Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6$1;->this$1:Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6$1;->this$1:Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;->access$0(Lcom/yopeso/lieferando/fragments/search/CSHFragment$6;)Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6$1$1;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/fragments/search/CSHFragment$6$1$1;-><init>(Lcom/yopeso/lieferando/fragments/search/CSHFragment$6$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 310
    return-void
.end method
