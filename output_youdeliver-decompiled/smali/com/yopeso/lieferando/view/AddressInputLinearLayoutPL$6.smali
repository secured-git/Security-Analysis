.class Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$6;
.super Ljava/lang/Object;
.source "AddressInputLinearLayoutPL.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$6;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 302
    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$6;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$7(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_1

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$6;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v1, v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$8(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;Z)V

    .line 304
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$6;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v1, v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$10(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;Z)V

    .line 305
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$6;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-static {v1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->access$11(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->requestFocus()Z

    .line 308
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
