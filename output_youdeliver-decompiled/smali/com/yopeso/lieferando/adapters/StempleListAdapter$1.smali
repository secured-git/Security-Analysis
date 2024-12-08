.class Lcom/yopeso/lieferando/adapters/StempleListAdapter$1;
.super Ljava/lang/Object;
.source "StempleListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/StempleListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/adapters/StempleListAdapter;

.field private final synthetic val$res:Lcom/yopeso/lieferando/model/restaurant/Restaurant;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/StempleListAdapter;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/StempleListAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/StempleListAdapter;

    iput-object p2, p0, Lcom/yopeso/lieferando/adapters/StempleListAdapter$1;->val$res:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/StempleListAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/StempleListAdapter;

    iget-object v0, v0, Lcom/yopeso/lieferando/adapters/StempleListAdapter;->mCallback:Lcom/yopeso/lieferando/callback/StempelRestaurantCallback;

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/StempleListAdapter$1;->val$res:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-interface {v0, v1}, Lcom/yopeso/lieferando/callback/StempelRestaurantCallback;->onStampElementSelected(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 161
    return-void
.end method
