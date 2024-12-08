.class Lcom/yopeso/lieferando/adapters/VoucherListAdapter$1;
.super Ljava/lang/Object;
.source "VoucherListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/VoucherListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/adapters/VoucherListAdapter;

.field private final synthetic val$voucher:Lcom/yopeso/lieferando/model/user/BonusVoucher;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/VoucherListAdapter;Lcom/yopeso/lieferando/model/user/BonusVoucher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/VoucherListAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/VoucherListAdapter;

    iput-object p2, p0, Lcom/yopeso/lieferando/adapters/VoucherListAdapter$1;->val$voucher:Lcom/yopeso/lieferando/model/user/BonusVoucher;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 59
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/VoucherListAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/VoucherListAdapter;

    invoke-static {v1}, Lcom/yopeso/lieferando/adapters/VoucherListAdapter;->access$0(Lcom/yopeso/lieferando/adapters/VoucherListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/VoucherStore;->getInstance(Landroid/content/Context;)Lcom/yopeso/lieferando/util/VoucherStore;

    move-result-object v0

    .line 60
    .local v0, "vouchersStore":Lcom/yopeso/lieferando/util/VoucherStore;
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/VoucherListAdapter$1;->val$voucher:Lcom/yopeso/lieferando/model/user/BonusVoucher;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/BonusVoucher;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/util/VoucherStore;->removeVoucher(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/VoucherListAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/VoucherListAdapter;

    invoke-static {v1}, Lcom/yopeso/lieferando/adapters/VoucherListAdapter;->access$1(Lcom/yopeso/lieferando/adapters/VoucherListAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/VoucherListAdapter$1;->val$voucher:Lcom/yopeso/lieferando/model/user/BonusVoucher;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/VoucherListAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/VoucherListAdapter;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/adapters/VoucherListAdapter;->notifyDataSetChanged()V

    .line 65
    return-void
.end method
