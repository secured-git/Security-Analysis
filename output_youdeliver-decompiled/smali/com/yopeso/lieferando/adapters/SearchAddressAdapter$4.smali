.class Lcom/yopeso/lieferando/adapters/SearchAddressAdapter$4;
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

.field private final synthetic val$location:Lcom/yopeso/lieferando/model/user/Location;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;Lcom/yopeso/lieferando/model/user/Location;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/SearchAddressAdapter$4;->this$0:Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

    iput-object p2, p0, Lcom/yopeso/lieferando/adapters/SearchAddressAdapter$4;->val$location:Lcom/yopeso/lieferando/model/user/Location;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/SearchAddressAdapter$4;->this$0:Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;->access$0(Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;)Lcom/yopeso/lieferando/callback/MainAddressesCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/SearchAddressAdapter$4;->val$location:Lcom/yopeso/lieferando/model/user/Location;

    invoke-interface {v0, v1}, Lcom/yopeso/lieferando/callback/MainAddressesCallBack;->tapOnNewOrderButton(Lcom/yopeso/lieferando/model/user/Location;)V

    .line 178
    return-void
.end method
