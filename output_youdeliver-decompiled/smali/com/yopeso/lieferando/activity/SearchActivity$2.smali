.class Lcom/yopeso/lieferando/activity/SearchActivity$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/activity/SearchActivity;->checkPreordering(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/activity/SearchActivity;

.field private final synthetic val$r:Lcom/yopeso/lieferando/model/restaurant/Restaurant;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/activity/SearchActivity;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/SearchActivity$2;->this$0:Lcom/yopeso/lieferando/activity/SearchActivity;

    iput-object p2, p0, Lcom/yopeso/lieferando/activity/SearchActivity$2;->val$r:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 543
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/SearchActivity$2;->this$0:Lcom/yopeso/lieferando/activity/SearchActivity;

    iget-object v1, p0, Lcom/yopeso/lieferando/activity/SearchActivity$2;->val$r:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/activity/SearchActivity;->access$5(Lcom/yopeso/lieferando/activity/SearchActivity;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 544
    return-void
.end method
