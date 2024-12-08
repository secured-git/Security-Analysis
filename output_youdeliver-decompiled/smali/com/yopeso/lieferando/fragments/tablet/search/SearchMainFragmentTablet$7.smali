.class Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$7;
.super Ljava/lang/Object;
.source "SearchMainFragmentTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->checkPreordering(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

.field private final synthetic val$r:Lcom/yopeso/lieferando/model/restaurant/Restaurant;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$7;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    iput-object p2, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$7;->val$r:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 374
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$7;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$7;->val$r:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->access$10(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 375
    return-void
.end method
