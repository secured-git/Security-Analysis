.class Lcom/yopeso/lieferando/adapters/MainAddressAdapter$4;
.super Ljava/lang/Object;
.source "MainAddressAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/adapters/MainAddressAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/MainAddressAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/MainAddressAdapter$4;->this$0:Lcom/yopeso/lieferando/adapters/MainAddressAdapter;

    iput p2, p0, Lcom/yopeso/lieferando/adapters/MainAddressAdapter$4;->val$position:I

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/MainAddressAdapter$4;->this$0:Lcom/yopeso/lieferando/adapters/MainAddressAdapter;

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->access$1(Lcom/yopeso/lieferando/adapters/MainAddressAdapter;)Lcom/yopeso/lieferando/callback/MainAddressesCallBack;

    move-result-object v0

    iget v1, p0, Lcom/yopeso/lieferando/adapters/MainAddressAdapter$4;->val$position:I

    invoke-interface {v0, v1}, Lcom/yopeso/lieferando/callback/MainAddressesCallBack;->editAddress(I)V

    .line 162
    return-void
.end method
