.class Lcom/yopeso/lieferando/adapters/SearchAddressAdapter$1;
.super Ljava/lang/Object;
.source "SearchAddressAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/SearchAddressAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

    iput p2, p0, Lcom/yopeso/lieferando/adapters/SearchAddressAdapter$1;->val$position:I

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/SearchAddressAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;->access$0(Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;)Lcom/yopeso/lieferando/callback/MainAddressesCallBack;

    move-result-object v0

    iget v1, p0, Lcom/yopeso/lieferando/adapters/SearchAddressAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Lcom/yopeso/lieferando/callback/MainAddressesCallBack;->addAsDefaultAddress(I)V

    .line 155
    return-void
.end method
