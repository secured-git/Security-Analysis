.class Lcom/yopeso/lieferando/activity/tablet/SearchActivity$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->checkPreordering(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/activity/tablet/SearchActivity;

.field private final synthetic val$r:Lcom/yopeso/lieferando/model/restaurant/Restaurant;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/activity/tablet/SearchActivity;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$2;->this$0:Lcom/yopeso/lieferando/activity/tablet/SearchActivity;

    iput-object p2, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$2;->val$r:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 619
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$2;->this$0:Lcom/yopeso/lieferando/activity/tablet/SearchActivity;

    iget-object v1, p0, Lcom/yopeso/lieferando/activity/tablet/SearchActivity$2;->val$r:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;->access$5(Lcom/yopeso/lieferando/activity/tablet/SearchActivity;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 620
    return-void
.end method
