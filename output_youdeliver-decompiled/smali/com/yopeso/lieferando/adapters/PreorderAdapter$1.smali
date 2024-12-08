.class Lcom/yopeso/lieferando/adapters/PreorderAdapter$1;
.super Ljava/lang/Object;
.source "PreorderAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/PreorderAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/adapters/PreorderAdapter;

.field private final synthetic val$date:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/PreorderAdapter;Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/PreorderAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/PreorderAdapter;

    iput-object p2, p0, Lcom/yopeso/lieferando/adapters/PreorderAdapter$1;->val$date:Ljava/util/Date;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/PreorderAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/PreorderAdapter;

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/PreorderAdapter;->access$0(Lcom/yopeso/lieferando/adapters/PreorderAdapter;)Lcom/yopeso/lieferando/callback/DeliveryTimeCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/PreorderAdapter$1;->val$date:Ljava/util/Date;

    invoke-interface {v0, v1}, Lcom/yopeso/lieferando/callback/DeliveryTimeCallBack;->onDeliveryTimeSelected(Ljava/util/Date;)V

    .line 76
    return-void
.end method
