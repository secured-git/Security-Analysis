.class Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$1;
.super Ljava/lang/Object;
.source "SearchRightFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->access$7()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->access$8(J)V

    .line 143
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1, p3}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->access$9(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;ZI)V

    .line 145
    :cond_0
    return-void
.end method
