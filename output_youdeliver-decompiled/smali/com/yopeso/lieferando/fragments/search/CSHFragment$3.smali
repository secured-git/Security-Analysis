.class Lcom/yopeso/lieferando/fragments/search/CSHFragment$3;
.super Ljava/lang/Object;
.source "CSHFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/search/CSHFragment;->setupCSH()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/search/CSHFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 202
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    iget-boolean v0, v0, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->mCityProvided:Z

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/CSHFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/search/CSHFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/search/CSHFragment;->access$3(Lcom/yopeso/lieferando/fragments/search/CSHFragment;Z)V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    if-eqz p2, :cond_0

    goto :goto_0
.end method
